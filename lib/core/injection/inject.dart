import 'package:desafio_grupo_hostaraguaia/presentation/controllers/home_page_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    initControllers();
  }

  static void initControllers() {
    GetIt.I
        .registerLazySingleton<HomePageController>(() => HomePageController());
  }
}
