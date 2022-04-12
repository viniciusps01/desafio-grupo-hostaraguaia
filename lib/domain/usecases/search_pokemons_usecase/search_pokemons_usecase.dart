import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

abstract class SearchPokemonsUseCase {
  Future<List<PokemonEntity>> call(String searchTerm,
      {int limit = 10, int offset = 0});
}
