import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/dtos/evolution_dto/evolution_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/evolution_entity.dart';

class EvolutionPokeAPIDtoImp implements EvolutionDto {
  @override
  EvolutionEntity fromJson(String source) => fromMap(json.decode(source));

  @override
  EvolutionEntity fromMap(Map<String, dynamic> map) {
    return EvolutionEntity(
      name: map['species']['name'] ?? '',
      types: ['Unimplemented'], //TODO: implement
    );
  }

  @override
  String toJson(EvolutionEntity evolution) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap(EvolutionEntity evolution) {
    throw UnimplementedError();
  }
}
