part of 'pokemon_details_page.dart';

class _TitleText extends StatelessWidget {
  final String text;
  final Color color;

  const _TitleText({
    Key? key,
    required this.text,
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
