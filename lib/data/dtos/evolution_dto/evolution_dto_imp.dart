import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';

class EvolutionDtoImp implements EvolutionDto {
  @override
  EvolutionEntity fromJson(String source) => fromMap(json.decode(source));

  @override
  EvolutionEntity fromMap(Map<String, dynamic> map) {
    return EvolutionEntity(
      name: map['name'] ?? '',
      types: List<String>.from(map['types']),
    );
  }

  @override
  String toJson(EvolutionEntity evolution) => json.encode(toMap(evolution));

  @override
  Map<String, dynamic> toMap(EvolutionEntity evolution) {
    return {
      'name': evolution.name,
      'types': evolution.types,
    };
  }
}
