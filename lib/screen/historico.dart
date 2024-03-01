import 'package:flutter/material.dart';
//import 'package:ia_food/Componentes/styles.dart';

cardHistorico(
    String data, String img, String marca, String pedido, String numeroPedido) {
  return Column(
    children: [
      Row(
        children: [
          Text(data),
        ],
      ),
      Container(
        width: 500,
        height: 280,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.red[50], borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            ListTile(
              leading:
                  CircleAvatar(radius: 22.0, backgroundImage: AssetImage(img)),
              title: Text(marca),
              trailing: const Icon(Icons.arrow_right),
            ),
            Padding(
              padding: const EdgeInsets.all(9),
              child: Row(
                children: [
                  const Text('Pedido concluido'),
                  Text('   $numeroPedido')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9),
              child: Row(
                children: [Text(pedido)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        child: ListTile(
                          onTap: () {},
                          title: const Text('Ajuda'),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        child: ListTile(
                          onTap: () {},
                          title: const Text('Adicionar ao carrinho'),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}
