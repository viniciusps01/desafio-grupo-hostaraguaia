import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/base_stat_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final BaseStatDto dto;
  late final BaseStatEntity stat;
  const name = 'HP';
  const value = 50;

  setUpAll(() {
    dto = BaseStatDtoImp();
    final json = dto.toJson(BaseStatEntity(name: name, value: value));
    stat = dto.fromJson(json);
  });

  //TODO: write meaningfull tests

  test('BaseStatDto should exist', () {
    expect(dto, isNotNull);
  });

  test('Name should be $name', () {
    expect(stat.name, name);
  });

  test('Value should be $value', () {
    expect(stat.value, value);
  });
}
