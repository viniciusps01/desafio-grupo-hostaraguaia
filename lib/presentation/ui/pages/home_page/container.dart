part of 'home_page.dart';

class _Container extends StatelessWidget {
  final Function(bool) onSearchEnableStateChanged;
  final Function() onSearchPressed;
  final Function() onGetFavoritesPressed;
  final bool isSearchEnabled;

  const _Container({
    Key? key,
    required this.onGetFavoritesPressed,
    required this.onSearchPressed,
    required this.onSearchEnableStateChanged,
    required this.isSearchEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: backgroundColor,
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const _Title(),
            const _ShortDescription(),
            const SizedBox(height: 20),
            SearchBar(
              backgroundColor: backgroundColor,
              searchIconActiveColor: secondaryColor,
              onSearchIconPressed: (_) {},
              onSearchEnableStateChanged: onSearchEnableStateChanged,
              isSearchEnabled: isSearchEnabled,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .12,
            ),
            _Button(
              label: 'pesquisar',
              onPressed: onSearchPressed,
              backgroundColor: secondaryColor,
              textColor: Colors.white,
            ),
            const SizedBox(height: 20),
            _Button(
              label: 'ver favoritos',
              onPressed: onGetFavoritesPressed,
              backgroundColor: terciaryColor,
              textColor: secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}