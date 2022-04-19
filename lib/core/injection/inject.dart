import 'package:desafio_grupo_hostaraguaia/core/services/http_client/dio_http_client_imp.dart';
import 'package:desafio_grupo_hostaraguaia/core/services/http_client/http_client.dart';
import 'package:desafio_grupo_hostaraguaia/data/datasources/search_pokemons_datasource.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_poke_api_dto_imp.dart';
import 'package:desafio_grupo_hostaraguaia/data/repositories/search_pokemons_poke_api_repository.dart';
import 'package:desafio_grupo_hostaraguaia/data/repositories/search_pokemons_repository_imp.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/search_pokemons_usecase/search_pokemons_usecase_imp.dart';
import 'package:desafio_grupo_hostaraguaia/external/datasources/search_pokemons_datasource/search_pokemons_poke_api_datasource_imp.dart';
import 'package:desafio_grupo_hostaraguaia/presentation/controllers/search_results_page_controller/search_results_page_controller.dart';
import 'package:get_it/get_it.dart';

import '../../data/dtos/base_stat_dto/base_stat_dto.dart';
import '../../data/dtos/base_stat_dto/base_stat_dto_imp.dart';
import '../../data/dtos/evolution_dto/evolution_dto.dart';
import '../../data/dtos/evolution_dto/evolution_dto_imp.dart';
import '../../data/dtos/evolution_dto/evolution_poke_api_dto_imp.dart';
import '../../data/dtos/pokemon_dto/pokemon_dto.dart';
import '../../data/dtos/pokemon_dto/pokemon_dto_imp.dart';
import '../../data/dtos/pokemon_dto/pokemon_poke_api_dto_imp.dart';
import '../../domain/repositories/search_pokemons_repository.dart';
import '../../domain/usecases/search_pokemons_usecase/search_pokemons_usecase.dart';
import '../../presentation/controllers/home_page_controller/home_page_controller.dart';

class Inject {
  static GetIt get _getIt => GetIt.I;

  static void init() {
    initDtos();
    initHttpClients();
    initDatasources();
    initRepositories();
    initUsecases();
    initControllers();
  }

  static initDtos() {
    _getIt.registerLazySingleton<BaseStatDtoImp>(() => BaseStatDtoImp());
    _getIt.registerLazySingleton<BaseStatPokeAPIDtoImp>(
        () => BaseStatPokeAPIDtoImp());
    _getIt.registerLazySingleton<BaseStatDto>(() => _getIt<BaseStatDtoImp>());

    _getIt.registerLazySingleton<EvolutionDtoImp>(() => EvolutionDtoImp());
    _getIt.registerLazySingleton<EvolutionPokeAPIDtoImp>(
        () => EvolutionPokeAPIDtoImp());
    _getIt.registerLazySingleton<EvolutionDto>(() => _getIt<EvolutionDtoImp>());

    _getIt.registerLazySingleton<PokemonDtoImp>(() =>
        PokemonDtoImp(_getIt<BaseStatDtoImp>(), _getIt<EvolutionDtoImp>()));
    _getIt.registerLazySingleton<PokemonPokeAPIDtoImp>(() =>
        PokemonPokeAPIDtoImp(
            _getIt<BaseStatPokeAPIDtoImp>(), _getIt<EvolutionPokeAPIDtoImp>()));
    _getIt.registerLazySingleton<PokemonDto>(() => _getIt<PokemonDtoImp>());
  }

  static initHttpClients() {
    _getIt.registerLazySingleton<DioHttpClientImp>(() => DioHttpClientImp());
    _getIt.registerLazySingleton<HttpClient>(() => _getIt<DioHttpClientImp>());
  }

  static initDatasources() {
    _getIt.registerLazySingleton<SearchPokemonsPokeAPIDataSourceImp>(
        () => SearchPokemonsPokeAPIDataSourceImp(_getIt()));
    _getIt.registerLazySingleton<SearchPokemonsDataSource>(
        () => _getIt<SearchPokemonsPokeAPIDataSourceImp>());
  }

  static void initRepositories() {
    _getIt.registerLazySingleton<SearchPokemonsPokeAPIRepositoryImp>(() =>
        SearchPokemonsPokeAPIRepositoryImp(
            _getIt(), _getIt<PokemonPokeAPIDtoImp>()));
    _getIt.registerLazySingleton<SearchPokemonsRepository>(
        () => _getIt<SearchPokemonsRepositoryImp>());
  }

  static initUsecases() {
    _getIt.registerLazySingleton<SearchPokemonsUseCaseImp>(() =>
        SearchPokemonsUseCaseImp(_getIt<SearchPokemonsPokeAPIRepositoryImp>()));
    _getIt.registerLazySingleton<SearchPokemonsUseCase>(
        () => _getIt<SearchPokemonsUseCaseImp>());
  }

  static initControllers() {
    _getIt
        .registerLazySingleton<HomePageController>(() => HomePageController());
    _getIt.registerLazySingleton<SearchResultsPageController>(
        () => SearchResultsPageController());
  }
}
