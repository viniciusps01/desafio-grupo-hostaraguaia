import 'package:desafio_grupo_hostaraguaia/presentation/ui/pages/pokemons_list_page/pokemons_list_page.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PokemonsListPage(
      pokemons: [],
      title: 'Favoritos',
    );
  }
}
