(ns server.core
  (:require [ring.adapter.jetty :refer [run-jetty]]))

(defn handler [request]
  {:status 200
   :body "hello, world!"})

(defn main []
  (run-jetty handler {:port 3000}))
