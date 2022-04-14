part of 'pokemon_details_page.dart';

class _Header extends StatefulWidget {
  final Function() onToggleFavorite;
  final bool isFavorite;
  final Color primary;
  final String title;
  final String subtitle;
  final String imageUrl;

  const _Header({
    Key? key,
    required this.onToggleFavorite,
    required this.isFavorite,
    required this.primary,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<_Header> createState() => _HeaderState();
}

class _HeaderState extends State<_Header> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      color: widget.primary,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
              color: Colors.white,
              iconSize: 30,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: PokemonListTile(
                  title: widget.title,
                  subtitle: widget.subtitle,
                  imageUrl: widget.imageUrl,
                  backgroundColor: widget.primary,
                  circleAvatarBackgroundColor: widget.primary,
                  shouldHaveShadow: false,
                ),
              ),
              InkWell(
                child: Icon(
                  isFavorite ? Icons.star : Icons.star_border,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                  widget.onToggleFavorite();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
