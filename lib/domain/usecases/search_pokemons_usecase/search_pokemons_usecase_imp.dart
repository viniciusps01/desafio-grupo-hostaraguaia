import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/search_pokemons_repository.dart';

import 'search_pokemons_usecase.dart';

class SearchPokemonsUseCaseImp implements SearchPokemonsUseCase {
  final SearchPokemonsRepository _repository;

  SearchPokemonsUseCaseImp(this._repository);

  @override
  Future<List<PokemonEntity>> call(String searchTerm,
      {int limit = 10, int offset = 0}) {
    return _repository(searchTerm, limit: limit, offset: offset);
  }
}
