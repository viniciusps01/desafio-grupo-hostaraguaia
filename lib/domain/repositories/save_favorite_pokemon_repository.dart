import '../entities/pokemon_entity.dart';

abstract class SaveFavoritePokemonRepository {
  Future<void> call(PokemonEntity pokemon);
}
