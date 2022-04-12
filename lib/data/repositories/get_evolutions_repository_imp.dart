import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/datasources/get_evolutions_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';

import '../../domain/repositories/get_evolutions_repository.dart';

class GetEvolutionsRepositoryImp implements GetEvolutionsRepository {
  final GetEvolutionsDataSource _dataSource;
  final EvolutionDto _evolutionDto;

  GetEvolutionsRepositoryImp(this._dataSource, this._evolutionDto);

  @override
  Future<List<EvolutionEntity>> call(int pokemonId) async {
    try {
      final json = await _dataSource(pokemonId);
      final map = jsonDecode(json);
      return map
          .map((evolution) => _evolutionDto.fromMap(evolution))
          .toList()
          .cast<EvolutionEntity>();
    } catch (e) {
      //TODO: handle erros properly
      rethrow;
    }
  }
}
