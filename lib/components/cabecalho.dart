import 'package:flutter/material.dart';

import 'caixa_de_texto.dart';

class Cabecalho extends StatefulWidget {
  const Cabecalho({Key? key}) : super(key: key);

  @override
  State<Cabecalho> createState() => _CabecalhoState();
}

class _CabecalhoState extends State<Cabecalho> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Cabeçalho de Nota",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Preencha as informações de cabeçalho do pedido",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          CaixaDeTexto(titulo: "Empresa", obrigatorio: true),
          CaixaDeTexto(titulo: "Perceiro", obrigatorio: true),
          CaixaDeTexto(titulo: "Linha do Procedimento", obrigatorio: true),
          CaixaDeTexto(titulo: "Cód. Representante", obrigatorio: false),
          CaixaDeTexto(titulo: "Gerente", obrigatorio: false),
          CaixaDeTexto(titulo: "Cód. Gerente", obrigatorio: false),
        ],
      ),
    );
  }
}
