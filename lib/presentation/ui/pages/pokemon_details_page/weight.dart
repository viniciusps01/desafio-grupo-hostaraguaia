part of 'pokemon_details_page.dart';

class _Weight extends StatelessWidget {
  final double weight;

  const _Weight({
    Key? key,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _weight = weight / 10;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SubtitleText(text: 'Peso'),
        _TitleText(
          text: _weight.toStringAsFixed(1).replaceFirst('.', ',') + ' kg',
        )
      ],
    );
  }
}
