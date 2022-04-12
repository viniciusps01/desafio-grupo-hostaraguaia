import 'package:desafio_grupo_hostaraguaia/domain/entities/base_stat_entity.dart';

class PokemonEntity {
  final int id;
  final List<BaseStatEntity> baseStats;
  final List<String> evolutions;
  final List<String> moves;
  final List<String> types;
  final String name;
  final String imageUrl;
  final double weight;

  PokemonEntity({
    required this.id,
    required this.baseStats,
    required this.evolutions,
    required this.moves,
    required this.types,
    required this.name,
    required this.imageUrl,
    required this.weight,
  });
}
