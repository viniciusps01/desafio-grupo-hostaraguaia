import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

abstract class SaveFavoritePokemonUseCase {
  Future<void> call(PokemonEntity pokemon);
}
