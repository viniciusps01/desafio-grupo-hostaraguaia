part of 'home_page.dart';

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(bottom: 10, top: 50),
      child: const Text(
        'Conheça a Pokédex',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: secondaryColor,
        ),
      ),
    );
  }
}
