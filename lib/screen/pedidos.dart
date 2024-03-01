import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/styles.dart';
import 'package:ia_food/screen/historico.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Pedidos', style: txtNunito300(16)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text('Histórico', style: txtNunitoBold(18)
          ),
            cardHistorico('02 de dezembro', 'assets/mequi.png', 'McDonald´s', '1 McLanche Feliz', 'Nº 1111' ),
            cardHistorico('29 de setembro', 'assets/sodie.png', 'Sodiê', 'Bolo crocante', 'Nº 031' ),
            cardHistorico('24 de maio', 'assets/bk.png', 'Burguer King', '1 whopper', 'Nº 101' ),
            cardHistorico('19 de agosto', 'assets/belasArtes.png', 'Belas Artes', 'Bauru', 'Nº 89' ),
            cardHistorico('01 de março', 'assets/açai.png', 'Açai', 'Açai', 'Nº 404' ),

          ],
      ),
    );
  }
}
