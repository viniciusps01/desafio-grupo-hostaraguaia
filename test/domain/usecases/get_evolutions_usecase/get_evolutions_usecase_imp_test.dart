import 'package:desafio_grupo_hostaraguaia/data/datasources/get_evolutions_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/repositories/get_evolutions_repository_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_evolutions_usecase/get_evolutions_usecase.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_evolutions_usecase/get_evolutions_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixture_reader.dart';

class MockGetEvolutionsDataSource extends Mock
    implements GetEvolutionsDataSource {}

void main() {
  late GetEvolutionsUseCase useCase;
  final dataSource = MockGetEvolutionsDataSource();

  setUpAll(() {
    final evolutionZeroAsync = fixtureAsync(FixtureOption.evolutionList);
    final dto = EvolutionDtoImp();

    when(() => dataSource(any()))
        .thenAnswer((invocation) => evolutionZeroAsync);

    final repository = GetEvolutionsRepositoryImp(dataSource, dto);
    useCase = GetEvolutionsUseCaseImp(repository);
  });

  test('GetEvolutionsUseCse should exist', () {
    expect(useCase, isNotNull);
  });

  test('Should return a List<EvolutionEntity>', () async {
    final result = await useCase(0);
    expect(result, isA<List<EvolutionEntity>>());
  });

  test('List of EvolutionEntity should not be empty', () async {
    final result = await useCase(0);
    expect(result, isNotEmpty);
  });

  test('List types should not be empty', () async {
    final result = await useCase(0);
    expect(result[0].types, isNotEmpty);
  });
}
