import 'package:desafio_grupo_hostaraguaia/presentation/ui/pages/pokemons_list_page/pokemons_list_page.dart';
import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String searchTerm;

  const SearchResultsPage({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PokemonsListPage(
      pokemons: [],
      title: 'Resultado da Pesquisa',
      subtitle: searchTerm,
    );
  }
}
