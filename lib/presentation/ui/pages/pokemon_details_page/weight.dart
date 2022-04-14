part of 'pokemon_details_page.dart';

class _Weight extends StatelessWidget {
  final double weight;

  const _Weight({
    Key? key,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SubtitleText(text: 'Peso'),
        _TitleText(
          text: weight.toStringAsFixed(1).replaceFirst('.', ',') + ' kg',
        )
      ],
    );
  }
}
