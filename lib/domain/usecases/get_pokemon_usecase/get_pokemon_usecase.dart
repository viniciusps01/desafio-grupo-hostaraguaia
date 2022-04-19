import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

abstract class GetPokemonUseCase {
  Future<PokemonEntity> call(int pokemonId);
}
