import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/datasources/search_pokemons_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/search_pokemons_repository.dart';

class SearchPokemonsRepositoryImp implements SearchPokemonsRepository {
  final SearchPokemonsDataSource _dataSource;
  final PokemonDto _pokemonDto;

  SearchPokemonsRepositoryImp(this._dataSource, this._pokemonDto);

  @override
  Future<List<PokemonEntity>> call(String searchTerm,
      {int limit = 10, int offset = 0}) async {
    try {
      final json = await _dataSource(searchTerm, limit: limit, offset: offset);
      final map = jsonDecode(json);

      return map
          .map((evolution) => _pokemonDto.fromMap(evolution))
          .toList()
          .cast<PokemonEntity>();
    } catch (e) {
      //TODO: handle erros properly
      rethrow;
    }
  }
}
