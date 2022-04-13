part of 'pokemons_list_page.dart';

class _ListTile extends StatelessWidget {
  final PokemonEntity pokemon;

  const _ListTile({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor, boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          offset: const Offset(1, 1),
          blurRadius: 2,
          spreadRadius: 3,
        )
      ]),
      child: ListTile(
        title: Text(
          pokemon.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
        subtitle: Text(
          'Tipo(s): ${formatTypes(pokemon.types)}',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.grey.shade600,
          ),
        ),
        leading: _CircleAvatar(pokemon: pokemon),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: primaryColor,
        ),
      ),
    );
  }

  String formatTypes(List<String> types) {
    final res =
        types.fold('', (previousValue, element) => '$previousValue / $element');
    return res.replaceFirst('/', '');
  }
}
