import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

abstract class GetFavoritePokemonsUseCase {
  Future<List<PokemonEntity>> call();
}
