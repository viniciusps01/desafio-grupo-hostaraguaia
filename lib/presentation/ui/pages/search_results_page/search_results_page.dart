import 'package:desafio_grupo_hostaraguaia/presentation/controllers/search_results_page_controller/search_results_page_controller.dart';
import 'package:desafio_grupo_hostaraguaia/presentation/ui/pages/pokemons_list_page/pokemons_list_page.dart';
import 'package:desafio_grupo_hostaraguaia/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class SearchResultsPage extends StatelessWidget {
  final String searchTerm;

  const SearchResultsPage({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _searchResultsPageController =
        GetIt.I.get<SearchResultsPageController>();

    _searchResultsPageController.searchPokemons(searchTerm);

    return Observer(
      builder: (context) {
        if (_searchResultsPageController.isLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        if (_searchResultsPageController.pokemons.isEmpty) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: primaryColor,
            ),
            body: const Center(
              child: Text('Nenhum pokemon encontrado'),
            ),
          );
        }

        return PokemonsListPage(
          pokemons: _searchResultsPageController.pokemons,
          title: 'Resultado da Pesquisa',
          subtitle: searchTerm,
          onTap: (pokemon) =>
              _searchResultsPageController.onPokemonSelected(context, pokemon),
        );
      },
    );
  }
}
