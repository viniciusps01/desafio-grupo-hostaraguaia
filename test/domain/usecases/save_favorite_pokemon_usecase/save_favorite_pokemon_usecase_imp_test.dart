import 'package:desafio_grupo_hostaraguaia/data/datasources/save_favorite_pokemon_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/repositories/save_favorite_pokemon_repository_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/save_favorite_pokemon_usecase/save_favorite_pokemon_usecase.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/save_favorite_pokemon_usecase/save_favorite_pokemon_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixture_reader.dart';

class MockSaveFavoritePokemonDataSource extends Mock
    implements SaveFavoritePokemonDataSource {}

void main() {
  late SaveFavoritePokemonUseCase useCase;
  final dataSource = MockSaveFavoritePokemonDataSource();
  late final PokemonEntity pokemonOne;

  setUpAll(() {
    final pokemonDto = PokemonDtoImp(BaseStatDtoImp(), EvolutionDtoImp());
    pokemonOne = pokemonDto.fromJson(fixtureSync(FixtureOption.pokemonOne));

    when(() => dataSource(any())).thenAnswer((invocation) async {});

    final repository = SaveFavoritePokemonRepositoryImp(dataSource, pokemonDto);
    useCase = SaveFavoritePokemonUseCaseImp(repository);
  });

  test('SaveFavoritePokemonUseCase should exist', () {
    expect(useCase, isNotNull);
  });

  //TODO: create meaningfull tests
}
