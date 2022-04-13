import 'package:desafio_grupo_hostaraguaia/domain/repositories/get_search_history_usecase.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/get_search_history_usecase/get_search_history_usecase.dart';

class GetSearchHistoryUseCaseImp implements GetSearchHistoryUseCase {
  final GetSearchHistoryRepository _repository;

  GetSearchHistoryUseCaseImp(this._repository);

  @override
  Future<List<String>> call() {
    return _repository();
  }
}
