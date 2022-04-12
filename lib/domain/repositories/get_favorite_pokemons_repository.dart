import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

abstract class GetFavoritePokemonsRepository {
  Future<List<PokemonEntity>> call();
}
