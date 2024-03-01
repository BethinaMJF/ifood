import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/styles.dart';

Widget card(largura, altura, Color cor, String txt, String img) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: cor, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(txt, style: txtNunitoBoldWhite(16)), Image.asset(img)],
      ),
    ),
  );
}

Widget cardBlack(largura, altura, Color cor, String txt, String img) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: cor, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text(txt, style: txtNunitoBold(16)), Image.asset(img)],
      ),
    ),
  );
}


Widget cardColunm(largura, altura, Color cor, String txt, String img) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: cor, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text(txt, style: txtNunitoBold(16)), Image.asset(img)],
      ),
    ),
  );
}
