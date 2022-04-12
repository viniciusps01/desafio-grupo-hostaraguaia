import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/get_pokemon_repository.dart';

import 'get_pokemon_usecase.dart';

class GetPokemonUseCaseImp implements GetPokemonUseCase {
  final GetPokemonRepository _repository;

  GetPokemonUseCaseImp(this._repository);

  @override
  Future<PokemonEntity> call(int pokemonId) {
    return _repository(pokemonId);
  }
}
