import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/usecases/search_pokemons_usecase/search_pokemons_usecase.dart';
import 'package:desafio_grupo_hostaraguaia/presentation/ui/pages/pokemon_details_page/pokemon_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'search_results_page_controller.g.dart';

class SearchResultsPageController = SearchResultsPageControllerBase
    with _$SearchResultsPageController;

abstract class SearchResultsPageControllerBase with Store {
  final _useCase = GetIt.I.get<SearchPokemonsUseCase>();

  @readonly
  bool _isLoading = false;

  @readonly
  List<PokemonEntity> _pokemons = [];

  @action
  Future<void> searchPokemons(String searchTerm) async {
    _isLoading = true;

    try {
      _pokemons = await _useCase(searchTerm);
    } catch (e) {
      //TODO: handle properly
      _pokemons = [];
      rethrow;
    } finally {
      _isLoading = false;
    }
  }

  @action
  void onPokemonSelected(BuildContext context, PokemonEntity pokemon) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PokemonDetailsPage(
          pokemon: pokemon,
          isFavorite: false,
          onToggleFavorite: () {},
        ),
      ),
    );
  }
}
