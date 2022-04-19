import 'package:desafio_grupo_hostaraguaia/data/datasources/remove_pokemon_from_favorites_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/remove_pokemon_from_favorites_repository.dart';

class RemovePokemonFromFavoritesRepositoryImp
    implements RemovePokemonFromFavoritesRepository {
  final RemovePokemonFromFavoritesDataSource _dataSource;

  RemovePokemonFromFavoritesRepositoryImp(this._dataSource);

  @override
  Future<void> call(String pokemonId) {
    return _dataSource(pokemonId);
  }
}
