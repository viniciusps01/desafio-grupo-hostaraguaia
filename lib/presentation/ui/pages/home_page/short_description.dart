part of 'home_page.dart';

class _ShortDescription extends StatelessWidget {
  const _ShortDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Utilize a pokédex para encontrar'
      ' mais informações sobre os seus pokémons',
      style: TextStyle(
        fontSize: 16,
        color: secondaryColor,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
