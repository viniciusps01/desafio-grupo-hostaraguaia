import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/get_favorite_pokemons_repository.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_favorite_pokemons_usecase/get_favorite_pokemons_usecase.dart';

class GetFavoritePokemonsUseCaseImp implements GetFavoritePokemonsUseCase {
  final GetFavoritePokemonsRepository _repository;

  GetFavoritePokemonsUseCaseImp(this._repository);

  @override
  Future<List<PokemonEntity>> call() {
    return _repository();
  }
}
