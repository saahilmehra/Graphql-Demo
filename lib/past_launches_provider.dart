import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:graphql_demo/repository/graphql/graphql_api.graphql.dart';
import 'package:graphql_demo/repository/past_launches.dart';

class PastLaunchesProvider with ChangeNotifier {
  bool _isLoading = false;

  List<PastLaunches$Root$FilmsConnection$Film?>? _films;

  bool get isLoading => _isLoading;

  List<PastLaunches$Root$FilmsConnection$Film?>? get films =>
      _films != null ? [..._films!] : null;

  void _updateLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> getPastLaunches() async {
    try {
      _updateLoading(true);

      final response = await PastLaunchesRepository.getPastLaunches();
      _films = response?.films;

      _films?.removeWhere((film) =>
          film == null || film.title == null || film.releaseDate == null);
    } catch (error) {
      log(error.toString());
    } finally {
      _updateLoading(false);
    }
  }
}
