import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/base_stat_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

import '../evolution_dto/evolution_dto.dart';

class PokemonPokeAPIDtoImp implements PokemonDto {
  final BaseStatDto _baseStatDto;
  final EvolutionDto _evolutionDtoImp;

  PokemonPokeAPIDtoImp(this._baseStatDto, this._evolutionDtoImp);

  @override
  PokemonEntity fromJson(String source) => fromMap(json.decode(source));

  @override
  PokemonEntity fromMap(Map<String, dynamic> map) {
    _getEvolutionsFromMap(map['evolutions']);
    map['baseStats']
        ?.map((stat) => _baseStatDto.fromMap(stat))
        .toList()
        .cast<BaseStatEntity>();
    map['moves'].map((e) => e['move']['name']).toList().cast<String>();
    map['types'].map((e) => e['type']['name']).toList().cast<String>();
    map['id']?.toInt();
    map['name'] ?? '';
    map['sprites']['other']['official-artwork']['front_default'];
    map['weight']?.toDouble() ?? 0.0;

    return PokemonEntity(
      id: map['id']?.toInt() ?? 0,
      baseStats: map['stats']
          ?.map((stat) => _baseStatDto.fromMap(stat))
          .toList()
          .cast<BaseStatEntity>(),
      evolutions: _getEvolutionsFromMap(map['evolutions']),
      moves: map['moves'].map((e) => e['move']['name']).toList().cast<String>(),
      types: map['types'].map((e) => e['type']['name']).toList().cast<String>(),
      name: map['name'] ?? '',
      imageUrl:
          map['sprites']['other']['official-artwork']['front_default'] ?? '',
      weight: map['weight']?.toDouble() ?? 0.0,
    );
  }

  @override
  String toJson(PokemonEntity pokemon) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap(PokemonEntity pokemon) {
    throw UnimplementedError();
  }

  List<EvolutionEntity> _getEvolutionsFromMap(Map<String, dynamic> map) {
    var current = map['chain'];
    final List<EvolutionEntity> evolutions = [];

    while (current != null) {
      evolutions.add(_evolutionDtoImp.fromMap(current));

      try {
        current = current['evolves_to'][0];
      } catch (e) {
        current = null;
      }
    }

    return evolutions;
  }
}
