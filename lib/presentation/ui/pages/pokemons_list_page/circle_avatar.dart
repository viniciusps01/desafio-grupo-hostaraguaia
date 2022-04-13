part of 'pokemons_list_page.dart';

class _CircleAvatar extends StatelessWidget {
  const _CircleAvatar({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 26,
        backgroundImage: NetworkImage(pokemon.imageUrl),
      ),
    );
  }
}
