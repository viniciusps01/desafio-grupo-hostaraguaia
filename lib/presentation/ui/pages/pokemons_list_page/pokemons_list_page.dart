import 'package:desafio_grupo_hostaraguaia/core/utils/format.dart';
import 'package:desafio_grupo_hostaraguaia/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../domain/entities/pokemon_entity.dart';
import '../../widgets/pokemon_list_tile.dart';

part 'appbar.dart';

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

                  return PokemonListTile(
                    imageUrl: pokemon.imageUrl,
                    title: pokemon.name,
                    subtitle: stringListToFormatedString(pokemon.types),
                    titleColor: primaryColor,
                    subtitleColor: Colors.grey.shade600,
                    circleAvatarBorderColor: primaryColor,
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: primaryColor,
                    ),
                  );
                },
                childCount: pokemons.length,
              ),
            )
          ],
        ));
  }
}
