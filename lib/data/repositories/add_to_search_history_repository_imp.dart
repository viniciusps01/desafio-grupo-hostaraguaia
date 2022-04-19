import 'package:desafio_grupo_hostaraguaia/data/datasources/add_to_search_history_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/add_to_search_history_repository.dart';

class AddToSearchHistoryRepositoryImp implements AddToSearchHistoryRepository {
  final AddToSearchHistoryDataSource _dataSource;

  AddToSearchHistoryRepositoryImp(this._dataSource);

  @override
  Future<void> call(String searchTerm) {
    return _dataSource(searchTerm);
  }
}
