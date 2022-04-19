part of 'pokemon_details_page.dart';

class _Evolutions extends StatelessWidget {
  final List<EvolutionEntity> evolutions;
  final Color color;

  const _Evolutions({
    Key? key,
    required this.evolutions,
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SubtitleText(text: 'Evoluções'),
        const SizedBox(height: 3),
        for (var evolution in evolutions)
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _TitleText(text: evolution.name),
                Text(
                  '(' + stringListToFormatedString(evolution.types) + ')',
                  style: TextStyle(color: color),
                )
              ],
            ),
          )
      ],
    );
  }
}
