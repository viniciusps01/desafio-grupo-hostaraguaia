import '../entities/pokemon_entity.dart';

abstract class GetPokemonRepository {
  Future<PokemonEntity> call(int pokemonId);
}
