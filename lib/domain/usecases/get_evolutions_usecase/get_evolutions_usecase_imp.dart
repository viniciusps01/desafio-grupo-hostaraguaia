import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/get_evolutions_repository.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_evolutions_usecase/get_evolutions_usecase.dart';

class GetEvolutionsUseCaseImp implements GetEvolutionsUseCase {
  final GetEvolutionsRepository _repository;

  GetEvolutionsUseCaseImp(this._repository);

  @override
  Future<List<EvolutionEntity>> call(int pokemonId) => _repository(pokemonId);
}
