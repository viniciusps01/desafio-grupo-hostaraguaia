import 'package:desafio_grupo_hostaraguaia/presentation/ui/pages/favorites_page/favorites_page.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../ui/pages/search_results_page/search_results_page.dart';

part 'home_page_controller.g.dart';

class HomePageController = HomePageControllerBase with _$HomePageController;

abstract class HomePageControllerBase with Store {
  @readonly
  bool _isSearchEnabled = false;

  @readonly
  String _searchTerm = '';

  @action
  void onSearchTermChanged(String searchTerm) => _searchTerm = searchTerm;

  @action
  void onSearchEnableStateChanged(bool status) => _isSearchEnabled = status;

  void onSearchIconPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => SearchResultsPage(
          searchTerm: _searchTerm,
        ),
      ),
    );
  }

  void onSearchButtonPressed(BuildContext context) {
    //TODO: implement
  }

  void onGetFavoritesButtonPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const FavoritesPage(),
      ),
    );
  }
}
