import 'package:desafio_grupo_hostaraguaia/data/datasources/get_pokemon_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/repositories/get_pokemon_repository_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_pokemon_usecase/get_pokemon_usecase.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_pokemon_usecase/get_pokemon_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixture_reader.dart';

class MockGetPokemonDataSource extends Mock implements GetPokemonDataSource {}

void main() {
  late GetPokemonUseCase useCase;
  final dataSource = MockGetPokemonDataSource();

  setUpAll(() {
    final evolutionZeroAsync = fixtureAsync(FixtureOption.pokemonOne);
    final pokemonDto = PokemonDtoImp(BaseStatDtoImp(), EvolutionDtoImp());

    when(() => dataSource(any()))
        .thenAnswer((invocation) => evolutionZeroAsync);

    final repository = GetPokemonRepositoryImp(dataSource, pokemonDto);
    useCase = GetPokemonUseCaseImp(repository);
  });

  test('GetEvolutionsUseCse should exist', () {
    expect(useCase, isNotNull);
  });

  test('Should EvolutionEntity', () async {
    final result = await useCase(0);
    expect(result, isA<PokemonEntity>());
  });

  test('List of evolutions should not be empty', () async {
    final result = await useCase(0);
    expect(result.evolutions, isNotEmpty);
  });

  test('List of types should not be empty', () async {
    final result = await useCase(0);
    expect(result.types, isNotEmpty);
  });
}
