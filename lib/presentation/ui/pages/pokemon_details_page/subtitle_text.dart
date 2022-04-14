part of 'pokemon_details_page.dart';

class _SubtitleText extends StatelessWidget {
  final String text;
  final Color color;

  const _SubtitleText({
    Key? key,
    required this.text,
    this.color = secondaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
