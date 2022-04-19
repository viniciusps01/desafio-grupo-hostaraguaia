import 'package:desafio_grupo_hostaraguaia/data/datasources/get_search_history_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/repositories/get_search_history_repository_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_search_history_usecase/get_search_history_usecase.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_search_history_usecase/get_search_history_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixture_reader.dart';

class MockGetSearchHistoryDataSource extends Mock
    implements GetSearchHistoryDataSource {}

void main() {
  late GetSearchHistoryUseCase useCase;
  final dataSource = MockGetSearchHistoryDataSource();

  setUpAll(() {
    final historyListAsync = fixtureAsync(FixtureOption.pokemonList);
    when(() => dataSource()).thenAnswer((invocation) => historyListAsync);

    final repository = GetSearchHistoryRepositoryImp(dataSource);
    useCase = GetSearchHistoryUseCaseImp(repository);
  });

  test('GetEvolutionsUseCse should exist', () {
    expect(useCase, isNotNull);
  });

  test('Should return a List<String>', () async {
    final result = await useCase();
    expect(result, isA<List<String>>());
  });

  test('List of Strings should not be empty', () async {
    final result = await useCase();
    expect(result, isNotEmpty);
  });
}
