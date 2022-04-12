import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/data/dtos/base_stat/base_stat_dto.dart';
import 'package:desafio_grupo_hostaraguaia/domain/entities/base_stat_entity.dart';

class BaseStatDtoImp implements BaseStatDto {
  @override
  BaseStatEntity fromJson(String source) => fromMap(json.decode(source));

  @override
  BaseStatEntity fromMap(Map<String, dynamic> map) {
    return BaseStatEntity(
      name: map['name'] ?? '',
      value: map['value']?.toInt() ?? 0,
    );
  }

  @override
  String toJson(BaseStatEntity stat) => json.encode(toMap(stat));

  @override
  Map<String, dynamic> toMap(BaseStatEntity stat) {
    return {
      'name': stat.name,
      'value': stat.value,
    };
  }
}
