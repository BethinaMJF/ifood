import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/styles.dart';

ListTile listTile(IconData icon, String title, String subtitle) {
  return ListTile(
    onTap: () {},
    leading: Icon(icon),
    title: Text(title, style: txtNunitoBold(16)),
    subtitle: Text(subtitle, style: txtNunito300(14)),
    trailing: const Icon(Icons.arrow_right),
  );
}

SizedBox listMarcas(String img, String title, String nota) {
  return SizedBox(
    height: 90,
    child: ListTile(
      onTap: () {},
      leading: const CircleAvatar(
          radius: 25.0, backgroundImage: AssetImage('assets/mequi.png')),
      title: Text(title, style: txtNunitoBold(16)),
      subtitle: Text(nota),
      trailing: Image.asset('assets/coração.png', width: 30),
    ),
  );
}
