import 'package:desafio_grupo_hostaraguaia/data/datasources/get_favorite_pokemons_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/shared_preferences_constants.dart';

class GetFavoritePokemonsSharedPreferencesDataSourceImp
    implements GetFavoritePokemonsDataSource {
  @override
  Future<String> call() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      return prefs.getStringList(favoritesKey).toString();
    } catch (e) {
      //TODO: handle properly
      rethrow;
    }
  }
}
