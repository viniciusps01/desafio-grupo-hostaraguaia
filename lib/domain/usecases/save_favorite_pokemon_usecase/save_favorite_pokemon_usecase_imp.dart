import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/save_favorite_pokemon_repository.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/save_favorite_pokemon_usecase/save_favorite_pokemon_usecase.dart';

class SaveFavoritePokemonUseCaseImp implements SaveFavoritePokemonUseCase {
  final SaveFavoritePokemonRepository _repository;

  SaveFavoritePokemonUseCaseImp(this._repository);

  @override
  Future<void> call(PokemonEntity pokemon) {
    return _repository(pokemon);
  }
}
