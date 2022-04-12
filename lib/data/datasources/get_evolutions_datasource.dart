import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';

abstract class GetEvolutionsDataSource {
  Future<String> call(int pokemonId);
}
