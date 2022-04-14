import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/core/constants/poke_api_constants.dart';
import 'package:desafio_grupo_hostaraguaia/core/services/http_client/http_client.dart';
import 'package:desafio_grupo_hostaraguaia/data/datasources/search_pokemons_datasource.dart';

class SearchPokemonsPokeAPIDataSourceImp implements SearchPokemonsDataSource {
  final HttpClient _httpClient;

  SearchPokemonsPokeAPIDataSourceImp(this._httpClient);

  @override
  Future<String> call(String searchTerm,
      {int limit = 10, int offset = 0}) async {
    final url = pokeAPIBaseUrl + '/pokemon/$searchTerm';

    try {
      final response = await _httpClient.get(url);
      final map = jsonDecode(response);
      final id = map['id'];
      final evolutionsUrl = pokeAPIBaseUrl + '/evolution-chain/$id';
      map['evolutions'] = jsonDecode(await _httpClient.get(evolutionsUrl));
      return jsonEncode(map);
    } catch (e) {
      //TODO: handle properly
      rethrow;
    }
  }
}
