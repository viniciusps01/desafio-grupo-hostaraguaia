import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

abstract class SearchPokemonsRepository {
  Future<List<PokemonEntity>> call(String searchTerm,
      {int limit = 10, int offset = 0});
}
