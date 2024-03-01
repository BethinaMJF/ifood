import 'dart:async';
import 'package:flutter/material.dart';

// controle de estado - carrosel
class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  //funcao para os gifs passarem sozinhos
  int paginaAtual = 0;
  int quantidadeDePaginas = 4;
  // obj q permite controlar as pags
  PageController controller = PageController();
  List<double> progresso = [0.0, 0.0, 0.0, 0.0];
  Timer? timer;

  //funcao chamada antes de criar a tela
  @override
  void initState() {
    super.initState();
    // ouvinte
    controller.addListener(() {
      int page = controller.page!.round();
      if (paginaAtual != page) {
        setState(() {
          paginaAtual = page;
          resetar();
        });
      }
    });
    proximaPage();
  }

  void proximaPage() {
    timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (paginaAtual < quantidadeDePaginas - 1) {
        controller.nextPage(
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
      } else {
        controller.animateToPage(0,
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
      }
    });
  }

  iniciarProgresso() {
    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (progresso[paginaAtual] < 1) {
          progresso[paginaAtual] += 0.02;
        } else {
          timer.cancel();
        }
      });
    });
  }

  //funcao para resetar o progresso
  void resetar() {
    for (int i = 0; i < quantidadeDePaginas; i++) {
      progresso[i] = 0.0;
    }
    iniciarProgresso();
  }

  //criar progresso do container
  List<Widget> indicator() {
    List<Widget> list = [];
    for (int i = 0; i < quantidadeDePaginas; i++) {
      list.add(Container(
        width: 50,
        height: 5,
        margin: const EdgeInsets.all(8),
        child: LinearProgressIndicator(
          value: progresso[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(
              paginaAtual == i? Colors.blue : Colors.grey),
        ),
      ));
    }
    return list;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(controller: controller, children: [
            Container(
              width: double.infinity,
              height: 200,
              // propriedade decoration para arrendonda as bordas
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/sanduiche.gif'))),
            ),
            Container(
              width: double.infinity,
              height: 200,
              // propriedade decoration para arrendonda as bordas
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/pizza.gif'))),
            ),
            Container(
              width: double.infinity,
              height: 200,
              // propriedade decoration para arrendonda as bordas
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/massa.gif'))),
            ),
            Container(
              width: double.infinity,
              height: 200,
              // propriedade decoration para arrendonda as bordas
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/carne.gif'))),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicator(),
          )
        ],
      ),
    );
  }
}
