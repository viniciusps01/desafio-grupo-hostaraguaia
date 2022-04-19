// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchResultsPageController on SearchResultsPageControllerBase, Store {
  final _$_isLoadingAtom =
      Atom(name: 'SearchResultsPageControllerBase._isLoading');

  bool get isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  bool get _isLoading => isLoading;

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  final _$_pokemonsAtom =
      Atom(name: 'SearchResultsPageControllerBase._pokemons');

  List<PokemonEntity> get pokemons {
    _$_pokemonsAtom.reportRead();
    return super._pokemons;
  }

  @override
  List<PokemonEntity> get _pokemons => pokemons;

  @override
  set _pokemons(List<PokemonEntity> value) {
    _$_pokemonsAtom.reportWrite(value, super._pokemons, () {
      super._pokemons = value;
    });
  }

  final _$searchPokemonsAsyncAction =
      AsyncAction('SearchResultsPageControllerBase.searchPokemons');

  @override
  Future<void> searchPokemons(String searchTerm) {
    return _$searchPokemonsAsyncAction
        .run(() => super.searchPokemons(searchTerm));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
