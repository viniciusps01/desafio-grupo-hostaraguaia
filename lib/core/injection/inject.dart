import 'package:get_it/get_it.dart';

import '../../data/dtos/base_stat_dto/base_stat_dto_imp.dart';
import '../../data/dtos/evolution_dto/evolution_dto_imp.dart';
import '../../data/dtos/pokemon_dto/pokemon_dto_imp.dart';
import '../../presentation/controllers/home_page_controller/home_page_controller.dart';

class Inject {
  static GetIt get _getIt => GetIt.I;

  static void init() {
    initDtos();
    initControllers();
  }

  static initDtos() {
    _getIt.registerLazySingleton<BaseStatDtoImp>(() => BaseStatDtoImp());
    _getIt.registerLazySingleton<EvolutionDtoImp>(() => EvolutionDtoImp());
    _getIt.registerLazySingleton<PokemonDtoImp>(() =>
        PokemonDtoImp(_getIt<BaseStatDtoImp>(), _getIt<EvolutionDtoImp>()));
  }

  static void initControllers() {
    _getIt
        .registerLazySingleton<HomePageController>(() => HomePageController());
  }
}
