import 'package:desafio_grupo_hostaraguaia/domain/repositories/add_to_search_history_repository.dart';

import 'add_to_search_history_usecase.dart';

class AddToSearchHistoryUseCaseImp implements AddToSearchHistoryUseCase {
  final AddToSearchHistoryRepository _repository;

  AddToSearchHistoryUseCaseImp(this._repository);

  @override
  Future<void> call(String searchTerm) {
    return _repository(searchTerm);
  }
}
