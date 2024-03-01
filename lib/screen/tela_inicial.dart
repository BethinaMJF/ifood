import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/bottom_nav.dart';
import 'package:ia_food/screen/busca.dart';
import 'package:ia_food/screen/home_page.dart';
import 'package:ia_food/screen/pedidos.dart';
import 'package:ia_food/screen/perfil.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int selectedIndex = 0;

  //lista das paginas 
  List<Widget> pages = const [
    HomePage(),
    TelaBusca(),
    Pedidos(),
    Perfil(),
  ];

  nextStation(int index){
    // setState mudar algo, mo caso o selectedIndex
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold wigted com estrutura de pagina, com appBar, body, botoes inferiores
    return Scaffold(

      body: pages[selectedIndex],

      // botoes inferiores
        bottomNavigationBar: BottomNavigationBar(

          // onTap, quando clico, 0 = home, 
          onTap: nextStation,
          // currentIndex define qual pag é mostrada
          currentIndex: selectedIndex,
          items: [
              bottomNavigationBarItem(Icons.home),
              bottomNavigationBarItem(Icons.search),
              bottomNavigationBarItem(Icons.shopping_cart),
              bottomNavigationBarItem(Icons.person),
          ],
        )
    );
  }
}