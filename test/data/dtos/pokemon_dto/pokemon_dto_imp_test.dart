import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  late final PokemonDto dto;
  late final PokemonEntity pokemonOne;

  setUpAll(() {
    //TODO: refactory using DI
    dto = PokemonDtoImp(BaseStatDtoImp());
    final json = fixtureSync(FixtureOption.pokemonOne);
    pokemonOne = dto.fromJson(json);
  });

  //TODO: write meaningfull tests

  test('PokemonDto should exist', () {
    expect(dto, isNotNull);
  });

  test('pokemonOne should exist', () {
    expect(pokemonOne, isNotNull);
  });
}
