import 'package:desafio_grupo_hostaraguaia/data/datasources/save_favorite_pokemon_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/save_favorite_pokemon_repository.dart';

class SaveFavoritePokemonRepositoryImp
    implements SaveFavoritePokemonRepository {
  final SaveFavoritePokemonDataSource _dataSource;
  final PokemonDto _pokemonDto;

  SaveFavoritePokemonRepositoryImp(this._dataSource, this._pokemonDto);

  @override
  Future<void> call(PokemonEntity pokemon) {
    final json = _pokemonDto.toJson(pokemon);
    return _dataSource(json);
  }
}
