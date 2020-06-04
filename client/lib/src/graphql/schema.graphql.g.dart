// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Simple$Query$Pokemon$Href _$Simple$Query$Pokemon$HrefFromJson(
    Map<String, dynamic> json) {
  return Simple$Query$Pokemon$Href()..href = json['href'] as String;
}

Map<String, dynamic> _$Simple$Query$Pokemon$HrefToJson(
        Simple$Query$Pokemon$Href instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

Simple$Query$Pokemon _$Simple$Query$PokemonFromJson(Map<String, dynamic> json) {
  return Simple$Query$Pokemon()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..number = json['number'] as int
    ..link = json['link'] == null
        ? null
        : Simple$Query$Pokemon$Href.fromJson(
            json['link'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Simple$Query$PokemonToJson(
        Simple$Query$Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'link': instance.link?.toJson(),
    };

Simple$Query _$Simple$QueryFromJson(Map<String, dynamic> json) {
  return Simple$Query()
    ..pokemon = json['pokemon'] == null
        ? null
        : Simple$Query$Pokemon.fromJson(
            json['pokemon'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Simple$QueryToJson(Simple$Query instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon?.toJson(),
    };
