
import 'package:flutter/material.dart';

// atribuindo um tipo á função, essa funcao so retorna esse tipo - Boa pratica
BottomNavigationBarItem bottomNavigationBarItem(IconData icon){
  return BottomNavigationBarItem( 
    icon: Icon(icon, color: Colors.black,),
    label: ''
    );
}