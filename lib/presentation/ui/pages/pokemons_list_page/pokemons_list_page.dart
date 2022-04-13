import 'package:desafio_grupo_hostaraguaia/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../domain/entities/pokemon_entity.dart';

part 'appbar.dart';
part 'list_tile.dart';
part 'circle_avatar.dart';

class PokemonsListPage extends StatelessWidget {
  final List<PokemonEntity> pokemons;
  final String title;
  final String? subtitle;

  const PokemonsListPage({
    Key? key,
    required this.pokemons,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: CustomScrollView(
          slivers: [
            _AppBar(subtitle: subtitle, title: title),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final pokemon = pokemons[index];

                  return _ListTile(pokemon: pokemon);
                },
                childCount: pokemons.length,
              ),
            )
          ],
        ));
  }
}
