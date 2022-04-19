part of 'pokemon_details_page.dart';

class _BaseStats extends StatelessWidget {
  final List<BaseStatEntity> stats;
  final Color color;

  const _BaseStats({
    Key? key,
    required this.stats,
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quantity = min(4, stats.length);
    final _stats = stats.getRange(0, quantity);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SubtitleText(text: 'Status Base'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var stat in _stats)
              Column(
                children: [
                  _SubtitleText(
                    text: stat.value.toString(),
                    color: color,
                  ),
                  Text(
                    stat.name,
                    style: TextStyle(
                      color: color,
                      fontSize: 12,
                    ),
                  )
                ],
              )
          ],
        )
      ],
    );
  }
}
