(ns server.core
  (:require [ring.adapter.jetty :refer [run-jetty]]
            [com.walmartlabs.lacinia.schema :as schema]
            [com.walmartlabs.lacinia.util :refer [attach-resolvers]]
            [com.walmartlabs.lacinia :refer [execute]]
            [clojure.data.json :as json]))

(defn get-pokemon
  [context arguments value]
  {:id     "1"
   :name   "Charmander"
   :number 1
   :link   {:href "example.com"}})

(def graphql-schema
  (-> {:objects
       {:Pokemon {:fields {:id     {:type '(non-null String)}
                           :name   {:type '(non-null String)}
                           :number {:type '(non-null Int)}
                           :link   {:type '(non-null :Href)}}}
        :Href    {:fields {:href {:type '(non-null String)}}}}
       :queries
       {:pokemon {:type    '(non-null :Pokemon)
                  :args    {}
                  :resolve :get-pokemon}}}
      (attach-resolvers {:get-pokemon get-pokemon})
      schema/compile))


(defn handler [request]
  {:status  200
   :headers {"Content-Type" "application/json"}
   :body    (let [query  (-> (:body request)
                             slurp
                             json/read-json
                             :query)
                  result (execute graphql-schema query nil nil)]
              (json/write-str result))})

(defn main []
  (run-jetty handler {:port 3000}))
