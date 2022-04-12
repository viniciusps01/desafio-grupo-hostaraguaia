import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat_dto/base_stat_dto.dart';
import 'package:desafio_grupo_hostaraguaia/data/dtos/pokemon_dto/pokemon_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/base_stat_entity.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/pokemon_entity.dart';

class PokemonDtoImp implements PokemonDto {
  final BaseStatDto _baseStatDto;

  PokemonDtoImp(this._baseStatDto);

  @override
  PokemonEntity fromJson(String source) => fromMap(json.decode(source));

  @override
  PokemonEntity fromMap(Map<String, dynamic> map) {
    return PokemonEntity(
      id: map['id']?.toInt() ?? 0,
      baseStats: map['baseStats']
          ?.map((x) => _baseStatDto.fromMap(x))
          .toList()
          .cast<BaseStatEntity>(),
      evolutions: List<String>.from(map['evolutions']),
      moves: List<String>.from(map['moves']),
      types: List<String>.from(map['types']),
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      weight: map['weight']?.toDouble() ?? 0.0,
    );
  }

  @override
  String toJson(PokemonEntity pokemon) => json.encode(toMap(pokemon));

  @override
  Map<String, dynamic> toMap(PokemonEntity pokemon) {
    return {
      'id': pokemon.id,
      'baseStats': pokemon.baseStats.map((x) => _baseStatDto.toMap(x)).toList(),
      'evolutions': pokemon.evolutions,
      'moves': pokemon.moves,
      'types': pokemon.types,
      'name': pokemon.name,
      'imageUrl': pokemon.imageUrl,
      'weight': pokemon.weight,
    };
  }
}
