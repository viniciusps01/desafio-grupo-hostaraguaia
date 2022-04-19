import 'package:desafio_grupo_hostaraguaia/core/constants/shared_preferences_constants.dart';
import 'package:desafio_grupo_hostaraguaia/data/datasources/save_favorite_pokemon_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveFavoritePokemonLocalDataSource
    implements SaveFavoritePokemonDataSource {
  @override
  Future<void> call(String pokemon) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final list = prefs.getStringList(favoritesKey);
      list.add(pokemon);
      prefs.setStringList(favoritesKey, list);
    } catch (e) {
      //TODO: Handle properly
      rethrow;
    }
  }
}
