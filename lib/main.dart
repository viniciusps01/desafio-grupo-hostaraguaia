import 'package:desafio_grupo_hostaraguaia/core/injection/inject.dart';
import 'package:desafio_grupo_hostaraguaia/presentation/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
