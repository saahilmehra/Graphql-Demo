// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet
    _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$PlanetFromJson(
            Map json) =>
        PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet()
          ..name = json['name'] as String?;

Map<String, dynamic>
    _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$PlanetToJson(
            PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet
                instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species
    _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$SpeciesFromJson(
            Map json) =>
        PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species()
          ..name = json['name'] as String?
          ..classification = json['classification'] as String?
          ..homeworld = json['homeworld'] == null
              ? null
              : PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet
                  .fromJson(
                      Map<String, dynamic>.from(json['homeworld'] as Map));

Map<String, dynamic>
    _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$SpeciesToJson(
            PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'classification': instance.classification,
          'homeworld': instance.homeworld?.toJson(),
        };

PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection
    _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnectionFromJson(
            Map json) =>
        PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection()
          ..species = (json['species'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species
                      .fromJson(Map<String, dynamic>.from(e as Map)))
              .toList();

Map<String, dynamic>
    _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnectionToJson(
            PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection
                instance) =>
        <String, dynamic>{
          'species': instance.species?.map((e) => e?.toJson()).toList(),
        };

PastLaunches$Root$FilmsConnection$Film
    _$PastLaunches$Root$FilmsConnection$FilmFromJson(Map json) =>
        PastLaunches$Root$FilmsConnection$Film()
          ..title = json['title'] as String?
          ..director = json['director'] as String?
          ..releaseDate = json['releaseDate'] as String?
          ..speciesConnection = json['speciesConnection'] == null
              ? null
              : PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection
                  .fromJson(Map<String, dynamic>.from(
                      json['speciesConnection'] as Map));

Map<String, dynamic> _$PastLaunches$Root$FilmsConnection$FilmToJson(
        PastLaunches$Root$FilmsConnection$Film instance) =>
    <String, dynamic>{
      'title': instance.title,
      'director': instance.director,
      'releaseDate': instance.releaseDate,
      'speciesConnection': instance.speciesConnection?.toJson(),
    };

PastLaunches$Root$FilmsConnection _$PastLaunches$Root$FilmsConnectionFromJson(
        Map json) =>
    PastLaunches$Root$FilmsConnection()
      ..films = (json['films'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PastLaunches$Root$FilmsConnection$Film.fromJson(
                  Map<String, dynamic>.from(e as Map)))
          .toList();

Map<String, dynamic> _$PastLaunches$Root$FilmsConnectionToJson(
        PastLaunches$Root$FilmsConnection instance) =>
    <String, dynamic>{
      'films': instance.films?.map((e) => e?.toJson()).toList(),
    };

PastLaunches$Root _$PastLaunches$RootFromJson(Map json) => PastLaunches$Root()
  ..allFilms = json['allFilms'] == null
      ? null
      : PastLaunches$Root$FilmsConnection.fromJson(
          Map<String, dynamic>.from(json['allFilms'] as Map));

Map<String, dynamic> _$PastLaunches$RootToJson(PastLaunches$Root instance) =>
    <String, dynamic>{
      'allFilms': instance.allFilms?.toJson(),
    };
