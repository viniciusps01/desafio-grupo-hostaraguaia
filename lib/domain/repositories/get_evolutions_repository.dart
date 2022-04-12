import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';

abstract class GetEvolutionsRepository {
  Future<List<EvolutionEntity>> call(int pokemonId);
}
