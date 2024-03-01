import 'package:flutter/material.dart';
import 'package:ia_food/Componentes/circle_avatar.dart';
import 'package:ia_food/Componentes/list_tile.dart';
import 'package:ia_food/Componentes/styles.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.qr_code)
          ]
        ),
        body: ListView(
          children: [
            Row(
              children: [
                circleAvatar(56, 56, 'assets/perfil.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Bethina Medeiros', style: txtNunitoBold(16)),
                )
              ],                      
            ),
            listTile(Icons.chat, 'Conversa', 'Meu histórico de conversas'),
            listTile(Icons.notifications, 'Notificações', 'Minha central de notificações'),
            listTile(Icons.card_giftcard, 'Pagamentos', 'Meu histórico de pagamentos'),
            listTile(Icons.shopping_cart, 'Assinatras', 'Minhas assinaturas'),
            listTile(Icons.local_offer, 'Cupons', 'Meus cupons'),
            listTile(Icons.loyalty, 'Fidelidade', 'Minhas fidelidade'),
            listTile(Icons.favorite, 'Favoritos', 'Meus favoritos'),
            listTile(Icons.explore, 'Descobrir', 'Encontre novidades aqui'),
            listTile(Icons.favorite, 'Endereços', 'Meus endereços de entrega'),
            listTile(Icons.account_circle, 'Dados da conta', 'Minhas informações aqui')

          ]
        )
    );
  }
}
