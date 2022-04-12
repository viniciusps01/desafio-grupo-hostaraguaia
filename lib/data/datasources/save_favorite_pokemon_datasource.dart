import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

abstract class SaveFavoritePokemonDataSource {
  Future<void> call(String pokemon);
}
