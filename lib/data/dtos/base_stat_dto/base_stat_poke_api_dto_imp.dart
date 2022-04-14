import 'dart:convert';

import '../../../domain/entities/base_stat_entity.dart';
import 'base_stat_dto.dart';

class BaseStatPokeAPIDtoImp implements BaseStatDto {
  @override
  BaseStatEntity fromJson(String source) => fromMap(json.decode(source));

  @override
  BaseStatEntity fromMap(Map<String, dynamic> map) {
    return BaseStatEntity(
      name: map['stat']['name'] ?? '',
      value: map['base_stat']?.toInt() ?? 0,
    );
  }

  @override
  String toJson(BaseStatEntity stat) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap(BaseStatEntity stat) {
    throw UnimplementedError();
  }
}
