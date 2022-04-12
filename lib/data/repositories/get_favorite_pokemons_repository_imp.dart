import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/datasources/get_favorite_pokemons_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/get_favorite_pokemons_repository.dart';

class GetFavoritePokemonsRepositoryImp
    implements GetFavoritePokemonsRepository {
  final GetFavoritePokemonsDataSource _dataSource;
  final PokemonDto _pokemonDto;

  GetFavoritePokemonsRepositoryImp(this._dataSource, this._pokemonDto);

  @override
  Future<List<PokemonEntity>> call() async {
    try {
      final json = await _dataSource();
      final map = jsonDecode(json);

      return map
          .map((pokemon) => _pokemonDto.fromMap(pokemon))
          .toList()
          .cast<PokemonEntity>();
    } catch (e) {
      //TODO: handle properly
      rethrow;
    }
  }
}
