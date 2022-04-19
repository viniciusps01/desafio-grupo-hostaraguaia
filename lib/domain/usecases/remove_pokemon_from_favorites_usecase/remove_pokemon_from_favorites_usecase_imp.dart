import 'package:desafio_grupo_hostaraguaia/domain/repositories/remove_pokemon_from_favorites_repository.dart';

import 'remove_pokemon_from_favorites_usecase.dart';

class RemovePokemonFromFavoritesUseCaseImp
    implements RemovePokemonFromFavoritesUseCase {
  final RemovePokemonFromFavoritesRepository _repository;

  RemovePokemonFromFavoritesUseCaseImp(this._repository);

  @override
  Future<void> call(String pokemonId) {
    return _repository(pokemonId);
  }
}
