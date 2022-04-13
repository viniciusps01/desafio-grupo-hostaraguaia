import 'package:mobx/mobx.dart';

part 'home_page_controller.g.dart';

class HomePageController = HomePageControllerBase with _$HomePageController;

abstract class HomePageControllerBase with Store {
  @observable
  bool isSearchEnabled = false;

  @action
  void onSearchEnableStateChanged(bool status) {
    isSearchEnabled = status;
  }

  void onSearchIconPressed(String searchQuery) {
    //TODO: implement
  }

  void onSearchButtonPressed() {
    //TODO: implement
  }

  void onGetFavoritesButtonPressed() {
    //TODO: implement
  }
}
