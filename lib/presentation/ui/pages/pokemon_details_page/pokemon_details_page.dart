import 'dart:math';

import 'package:desafio_grupo_hostaraguaia/core/utils/format.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';
import 'package:desafio_grupo_hostaraguaia/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../domain/entities/base_stat_entity.dart';
import '../../../../domain/entities/evolution_entity.dart';
import '../../../../fake_data/fake_pokemon.dart';
import '../../widgets/pokemon_list_tile.dart';

part 'header.dart';
part 'weight.dart';
part 'subtitle_text.dart';
part 'title_text.dart';
part 'evolutions.dart';
part 'base_stats.dart';
part 'skills.dart';

class PokemonDetailsPage extends StatelessWidget {
  final PokemonEntity pokemon;
  final bool isFavorite;
  final Function() onToggleFavorite;

  const PokemonDetailsPage({
    Key? key,
    required this.isFavorite,
    required this.onToggleFavorite,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(
                onToggleFavorite: onToggleFavorite,
                isFavorite: isFavorite,
                primary: primaryColor,
                title: pokemon.name,
                subtitle: stringListToFormatedString(pokemon.types),
                imageUrl: pokemon.imageUrl,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _TitleText(
                      text: 'Características',
                      color: secondaryColor,
                    ),
                    const SizedBox(height: 15),
                    _Weight(weight: pokemon.weight),
                    const SizedBox(height: 30),
                    _Evolutions(evolutions: pokemon.evolutions),
                    const SizedBox(height: 30),
                    _BaseStats(stats: pokemon.baseStats),
                    const SizedBox(height: 30),
                    _Skills(skills: pokemon.moves)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
