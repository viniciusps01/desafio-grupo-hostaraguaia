part of 'pokemons_list_page.dart';

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  final String? subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      collapsedHeight: subtitle == null ? kToolbarHeight : 65,
      elevation: 3,
      shadowColor: Colors.grey.shade100,
      forceElevated: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      title: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: secondaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: subtitle == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  subtitle!,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
      ),
    );
  }
}
