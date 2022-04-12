import 'package:desafio_grupo_hostaraguaia/data/datasources/get_favorite_pokemons_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/datasources/search_pokemons_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/repositories/get_favorite_pokemons_repository_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_favorite_pokemons_usecase/get_favorite_pokemons_usecase.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_favorite_pokemons_usecase/get_favorite_pokemons_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixture_reader.dart';

class MockGetFavoritePokemonsDataSource extends Mock
    implements GetFavoritePokemonsDataSource {}

void main() {
  late GetFavoritePokemonsUseCase useCase;
  final dataSource = MockGetFavoritePokemonsDataSource();

  setUpAll(() {
    final pokemonListAsync = fixtureAsync(FixtureOption.pokemonList);
    final pokemonDto = PokemonDtoImp(BaseStatDtoImp(), EvolutionDtoImp());

    when(() => dataSource()).thenAnswer((invocation) => pokemonListAsync);

    final repository = GetFavoritePokemonsRepositoryImp(dataSource, pokemonDto);
    useCase = GetFavoritePokemonsUseCaseImp(repository);
  });

  test('GetEvolutionsUseCse should exist', () {
    expect(useCase, isNotNull);
  });

  test('Should return a List<EvolutionEntity>', () async {
    final result = await useCase();
    expect(result, isA<List<PokemonEntity>>());
  });

  test('List of EvolutionEntity should not be empty', () async {
    final result = await useCase();
    expect(result, isNotEmpty);
  });

  test('List types should not be empty', () async {
    final result = await useCase();
    expect(result[0].types, isNotEmpty);
  });
}
