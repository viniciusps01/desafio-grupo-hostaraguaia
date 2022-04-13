import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/datasources/get_search_history_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/domain/repositories/get_search_history_usecase.dart';

class GetSearchHistoryRepositoryImp implements GetSearchHistoryRepository {
  final GetSearchHistoryDataSource _dataSource;

  GetSearchHistoryRepositoryImp(this._dataSource);

  @override
  Future<List<String>> call() async {
    final json = await _dataSource();
    return jsonDecode(json).toList().cast<String>();
  }
}
