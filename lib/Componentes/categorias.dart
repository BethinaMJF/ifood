import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/styles.dart';

Container categoriasIcon(String titulo, double tamanho) {
  return Container(
      width: tamanho,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
      ),
      child: ListTile(
        onTap: () {},
        title: Text(
          titulo,
          style: txtNunitoBold(16),
        ),
        trailing: const Icon(Icons.arrow_drop_down_rounded),
      ));
}

Container categorias(String titulo, double tamanho) {
  return Container(
      width: tamanho,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
      ),
      child: ListTile(
        onTap: () {},
        title: Text(titulo, style: txtNunitoBold(16)),
      ));
}
