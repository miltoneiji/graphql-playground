// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Simple$Query$Pokemon _$Simple$Query$PokemonFromJson(Map<String, dynamic> json) {
  return Simple$Query$Pokemon()
    ..name = json['name'] as String
    ..number = json['number'] as String
    ..maxHP = json['maxHP'] as int;
}

Map<String, dynamic> _$Simple$Query$PokemonToJson(
        Simple$Query$Pokemon instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'maxHP': instance.maxHP,
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
