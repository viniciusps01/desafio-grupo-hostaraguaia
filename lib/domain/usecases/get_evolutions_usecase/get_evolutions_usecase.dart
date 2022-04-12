import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';

abstract class GetEvolutionsUseCase {
  Future<List<EvolutionEntity>> call(int pokemonId);
}
