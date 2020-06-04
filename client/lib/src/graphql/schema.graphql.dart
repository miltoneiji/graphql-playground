// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Simple$Query$Pokemon$Href with EquatableMixin {
  Simple$Query$Pokemon$Href();

  factory Simple$Query$Pokemon$Href.fromJson(Map<String, dynamic> json) =>
      _$Simple$Query$Pokemon$HrefFromJson(json);

  String href;

  @override
  List<Object> get props => [href];
  Map<String, dynamic> toJson() => _$Simple$Query$Pokemon$HrefToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Simple$Query$Pokemon with EquatableMixin {
  Simple$Query$Pokemon();

  factory Simple$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$Simple$Query$PokemonFromJson(json);

  String id;

  String name;

  int number;

  Simple$Query$Pokemon$Href link;

  @override
  List<Object> get props => [id, name, number, link];
  Map<String, dynamic> toJson() => _$Simple$Query$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Simple$Query with EquatableMixin {
  Simple$Query();

  factory Simple$Query.fromJson(Map<String, dynamic> json) =>
      _$Simple$QueryFromJson(json);

  Simple$Query$Pokemon pokemon;

  @override
  List<Object> get props => [pokemon];
  Map<String, dynamic> toJson() => _$Simple$QueryToJson(this);
}

class SimpleQuery extends GraphQLQuery<Simple$Query, JsonSerializable> {
  SimpleQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'simple'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'pokemon'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'number'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'link'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'href'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'simple';

  @override
  List<Object> get props => [document, operationName];
  @override
  Simple$Query parse(Map<String, dynamic> json) => Simple$Query.fromJson(json);
}
