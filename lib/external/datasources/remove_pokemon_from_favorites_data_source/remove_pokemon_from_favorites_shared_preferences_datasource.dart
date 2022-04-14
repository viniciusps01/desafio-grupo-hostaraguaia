import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/datasources/remove_pokemon_from_favorites_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/shared_preferences_constants.dart';

class RemovePokemonFromFavoritesSharedPrefencesDataSource
    implements RemovePokemonFromFavoritesDataSource {
  @override
  Future<void> call(String pokemonId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final list = prefs.getStringList(favoritesKey);

      final index =
          list.indexWhere((pokemon) => jsonDecode(pokemon)['id'] == pokemonId);

      if (index == -1) return;

      list.removeAt(index);

      prefs.setStringList(favoritesKey, list);
    } catch (e) {
      //TODO: Handle properly
      rethrow;
    }
  }
}
