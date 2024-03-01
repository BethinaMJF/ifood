import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:ia_food/Componentes/card.dart';
import 'package:ia_food/Componentes/categorias.dart';
import 'package:ia_food/Componentes/list_tile.dart';
import 'package:ia_food/Componentes/slide.dart';
import 'package:ia_food/Componentes/styles.dart';
import 'package:ia_food/Componentes/marcas.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Av. Brasil", style: txtNunitoBold(16)),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.red,
              ),
            )
          ],
        ),
        body: ListView(children: [
          Row(children: [
            cardBlack(185, 96, Colors.white, 'Mercado', 'assets/mercado.png'),
            cardBlack(185, 96, Colors.white, 'Farmácia', 'assets/farmacia.png'),
          ]),
          Row(children: [
            cardColunm(85, 115, Colors.white, 'Bebidas', 'assets/bebidas.png'),
            cardColunm(85, 115, Colors.white, 'Pet', 'assets/pet.png'),
            cardColunm(85, 115, Colors.white, 'Carnes', 'assets/carnes.png'),
            cardColunm(85, 115, Colors.white, 'Mais', 'assets/mais.png'),
          ]),
          const Slide(),
          ListTile(
            onTap: () {},
            title: Text('Famosos no iFood', style: txtNunitoBold(16)),
            subtitle: Text('Marcas famosas', style: txtNunito300(14)),
            trailing:
                const Text('ver mais', style: TextStyle(color: Colors.red)),
          ),
          Container(
              height: 140,
              margin: const EdgeInsets.all(9),
              child: ListView(scrollDirection: Axis.horizontal, children: [
                marcas('assets/mequi.png', 'McDonald´s'),
                marcas('assets/belasArtes.png', 'Belas \nArtes'),
                marcas('assets/bk.png', 'Burguer \n  King'),
                marcas('assets/sodie.png', 'Sodiê \nDoces'),
                marcas('assets/coffee.png', 'New York \n  Coffee'),
                marcas('assets/açai.png', 'Açai'),
                marcas('assets/belasArtes.png', 'Belas \nArtes'),
                marcas('assets/mequi.png', 'McDonalds'),
              ])),

          SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                const SizedBox(width: 15),
                categoriasIcon('Ordenar', 150), 
                const SizedBox(width: 15),
                categorias('Entrega Grátis', 180),
                const SizedBox(width: 15),
                categoriasIcon('Vale-refeição', 190),
                const SizedBox(width: 15),
                categoriasIcon('Distância', 160),
                const SizedBox(width: 15),
                categorias('Entrega Parceira', 180),
                const SizedBox(width: 15),
                categoriasIcon('Super restaurantes', 250),
                const SizedBox(width: 15),
                categoriasIcon('Filtros', 140),
              ])),

          const SizedBox(height: 15),
          listMarcas('assets/mequi.png', 'McDonald´s', '4,5'),
          listMarcas('assets/mequi.png', 'McDonald´s', '4,5'),
          listMarcas('assets/mequi.png', 'McDonald´s', '4,5'),
          listMarcas('assets/mequi.png', 'McDonald´s', '4,5'),
          listMarcas('assets/mequi.png', 'McDonald´s', '4,5'),
          listMarcas('assets/mequi.png', 'McDonald´s', '4,5'),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

              
        ]));
  }
}
