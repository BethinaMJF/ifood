import 'package:flutter/material.dart';
import 'package:ia_food/screen/tela_inicial.dart';

// StatelessWidget = nao armazena estado
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // build = metodo que constroi algo, o retorno
  Widget build(BuildContext context) {
    // Material App base
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //paremetros: home, primeira tela
      home: TelaInicial(),
    );
  }
}