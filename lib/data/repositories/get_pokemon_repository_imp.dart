import 'package:desafio_grupo_hostaraguaia/data/datasources/get_pokemon_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/get_pokemon_repository.dart';

class GetPokemonRepositoryImp implements GetPokemonRepository {
  final GetPokemonDataSource _dataSource;
  final PokemonDto _pokemonDto;

  GetPokemonRepositoryImp(this._dataSource, this._pokemonDto);

  @override
  Future<PokemonEntity> call(int pokemonId) async {
    try {
      final json = await _dataSource(pokemonId);
      return _pokemonDto.fromJson(json);
    } catch (e) {
      //TODO: handle properly
      rethrow;
    }
  }
}
