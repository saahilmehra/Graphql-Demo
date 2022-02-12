// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet
    extends JsonSerializable with EquatableMixin {
  PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet();

  factory PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$PlanetFromJson(
          json);

  String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$PlanetToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species
    extends JsonSerializable with EquatableMixin {
  PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species();

  factory PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$SpeciesFromJson(
          json);

  String? name;

  String? classification;

  PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species$Planet?
      homeworld;

  @override
  List<Object?> get props => [name, classification, homeworld];
  @override
  Map<String, dynamic> toJson() =>
      _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$SpeciesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection
    extends JsonSerializable with EquatableMixin {
  PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection();

  factory PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnectionFromJson(
          json);

  List<PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection$Species?>?
      species;

  @override
  List<Object?> get props => [species];
  @override
  Map<String, dynamic> toJson() =>
      _$PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunches$Root$FilmsConnection$Film extends JsonSerializable
    with EquatableMixin {
  PastLaunches$Root$FilmsConnection$Film();

  factory PastLaunches$Root$FilmsConnection$Film.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunches$Root$FilmsConnection$FilmFromJson(json);

  String? title;

  String? director;

  String? releaseDate;

  PastLaunches$Root$FilmsConnection$Film$FilmSpeciesConnection?
      speciesConnection;

  @override
  List<Object?> get props => [title, director, releaseDate, speciesConnection];
  @override
  Map<String, dynamic> toJson() =>
      _$PastLaunches$Root$FilmsConnection$FilmToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunches$Root$FilmsConnection extends JsonSerializable
    with EquatableMixin {
  PastLaunches$Root$FilmsConnection();

  factory PastLaunches$Root$FilmsConnection.fromJson(
          Map<String, dynamic> json) =>
      _$PastLaunches$Root$FilmsConnectionFromJson(json);

  List<PastLaunches$Root$FilmsConnection$Film?>? films;

  @override
  List<Object?> get props => [films];
  @override
  Map<String, dynamic> toJson() =>
      _$PastLaunches$Root$FilmsConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PastLaunches$Root extends JsonSerializable with EquatableMixin {
  PastLaunches$Root();

  factory PastLaunches$Root.fromJson(Map<String, dynamic> json) =>
      _$PastLaunches$RootFromJson(json);

  PastLaunches$Root$FilmsConnection? allFilms;

  @override
  List<Object?> get props => [allFilms];
  @override
  Map<String, dynamic> toJson() => _$PastLaunches$RootToJson(this);
}

final PAST_LAUNCHES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PastLaunches'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'allFilms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'films'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'director'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'releaseDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'speciesConnection'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'species'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'classification'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'homeworld'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class PastLaunchesQuery
    extends GraphQLQuery<PastLaunches$Root, JsonSerializable> {
  PastLaunchesQuery();

  @override
  final DocumentNode document = PAST_LAUNCHES_QUERY_DOCUMENT;

  @override
  final String operationName = 'PastLaunches';

  @override
  List<Object?> get props => [document, operationName];
  @override
  PastLaunches$Root parse(Map<String, dynamic> json) =>
      PastLaunches$Root.fromJson(json);
}
