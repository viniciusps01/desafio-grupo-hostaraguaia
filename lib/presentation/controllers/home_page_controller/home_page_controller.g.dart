// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomePageController on HomePageControllerBase, Store {
  final _$_isSearchEnabledAtom =
      Atom(name: 'HomePageControllerBase._isSearchEnabled');

  bool get isSearchEnabled {
    _$_isSearchEnabledAtom.reportRead();
    return super._isSearchEnabled;
  }

  @override
  bool get _isSearchEnabled => isSearchEnabled;

  @override
  set _isSearchEnabled(bool value) {
    _$_isSearchEnabledAtom.reportWrite(value, super._isSearchEnabled, () {
      super._isSearchEnabled = value;
    });
  }

  final _$_searchTermAtom = Atom(name: 'HomePageControllerBase._searchTerm');

  String get searchTerm {
    _$_searchTermAtom.reportRead();
    return super._searchTerm;
  }

  @override
  String get _searchTerm => searchTerm;

  @override
  set _searchTerm(String value) {
    _$_searchTermAtom.reportWrite(value, super._searchTerm, () {
      super._searchTerm = value;
    });
  }

  final _$HomePageControllerBaseActionController =
      ActionController(name: 'HomePageControllerBase');

  @override
  void onSearchTermChanged(String searchTerm) {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.onSearchTermChanged');
    try {
      return super.onSearchTermChanged(searchTerm);
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSearchEnableStateChanged(bool status) {
    final _$actionInfo = _$HomePageControllerBaseActionController.startAction(
        name: 'HomePageControllerBase.onSearchEnableStateChanged');
    try {
      return super.onSearchEnableStateChanged(status);
    } finally {
      _$HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
