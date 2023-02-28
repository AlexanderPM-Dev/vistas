import 'package:flutter/material.dart';
import 'package:vistas/Home/home.dart';
import 'package:vistas/cursoinduccion/cursoinduccion.dart';
import 'package:vistas/programainduccion/programainduccion.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeView.name,
      routes: {
        HomeView.name: (context) => const HomeView(),
        CursoInduccion.name: (context) => const CursoInduccion(),
        programacionInduccion.name: (context) => const programacionInduccion(),
      },
    );
  }
}
