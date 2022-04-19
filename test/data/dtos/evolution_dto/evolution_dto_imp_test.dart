import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final EvolutionDto dto;
  late final EvolutionEntity evolution;
  const name = 'HP';
  const types = ['type-1', 'type-2'];

  setUpAll(() {
    dto = EvolutionDtoImp();
    final json = dto.toJson(EvolutionEntity(name: name, types: types));
    evolution = dto.fromJson(json);
  });

  //TODO: write meaningfull tests

  test('EvolutionDto should exist', () {
    expect(dto, isNotNull);
  });

  test('Name should be $name', () {
    expect(evolution.name, name);
  });

  test('Length should be ${types.length}', () {
    expect(evolution.types.length, types.length);
  });
}
