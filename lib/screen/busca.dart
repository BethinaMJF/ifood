import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/card.dart';
import 'package:ia_food/Componentes/styles.dart';


class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            border:const OutlineInputBorder(),
            label: const Text('Buscar no aiFood'),
            prefixIcon: const Icon(Icons.search, color: Colors.red),
            filled: true,
            fillColor: Colors.grey[50],
            contentPadding: const EdgeInsets.all(4)
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categorias', style: txtNunitoBoldWhite(16)),
          ),
          Wrap(
            children: [
              card(185, 96, Colors.green, 'Mercado', 'assets/mercado.png'),
              card(185, 96, Colors.orange, 'Farmácia', 'assets/farmacia.png'),
              card(185, 96, Colors.yellow, 'Bebidas', 'assets/bebidas.png'),
              card(185, 96, Colors.grey, 'Pet', 'assets/pet.png'),
              card(185, 96, Colors.purple, 'Carnes', 'assets/carnes.png'),
              card(185, 96, Colors.blue, 'Marmita', 'assets/marmita.png'),
              card(185, 96, Colors.green, 'Sorvete', 'assets/sorvete.png'),
              card(185, 96, Colors.pink, 'Tapioca', 'assets/tapioca.png'),
              card(185, 96, Colors.orange, 'Pizza', 'assets/pizza.png'),
              card(185, 96, Colors.yellow, 'Sopas', 'assets/sopas.png'),
              card(185, 96, Colors.green, 'Sucos', 'assets/sucos.png'),
              card(185, 96, Colors.blue, 'Hot Dog', 'assets/hotdog.png'),
              card(185, 96, Colors.purple, 'Bolo', 'assets/bolo.png'),
              card(185, 96, Colors.red, 'Lanches', 'assets/lanches.png'),
              card(185, 96, Colors.grey, 'Café', 'assets/cafe.png'),
            ],
          )
        ],
      )
    );
  }
}