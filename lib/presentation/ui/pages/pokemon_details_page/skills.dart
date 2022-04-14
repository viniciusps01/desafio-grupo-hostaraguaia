part of 'pokemon_details_page.dart';

class _Skills extends StatelessWidget {
  final List<String> skills;
  final Color color;

  const _Skills({
    Key? key,
    required this.skills,
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SubtitleText(text: 'Habilidades'),
        const SizedBox(height: 10),
        for (var skill in skills)
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.circle,
                  color: color,
                  size: 6,
                ),
                const SizedBox(width: 15),
                _TitleText(text: skill),
              ],
            ),
          )
      ],
    );
  }
}
