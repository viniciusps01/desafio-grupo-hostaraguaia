import 'package:desafio_grupo_hostaraguaia/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/search_bar.dart';

part 'short_description.dart';
part 'title.dart';
part 'container.dart';
part 'button.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 40,
            bottom: 20,
          ),
          color: primaryColor,
          child: Column(
            children: [
              Image.asset('assets/images/pokemon-logo.png'),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.centerRight,
                child: Image.asset('assets/images/3dots.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: _Container(
                  onSearchPressed: () {},
                  onGetFavoritesPressed: () {},
                  onSearchEnableStateChanged: (bool) {},
                  isSearchEnabled: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
