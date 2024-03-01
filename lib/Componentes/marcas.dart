import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/circle_avatar.dart';

Column marcas(String img, String titulo ){
  return Column(
    children: [
      Column(
        children: [      
          circleAvatar(60, 60, img),
          Text(titulo)
        ],
     ),
    ],
  );
}