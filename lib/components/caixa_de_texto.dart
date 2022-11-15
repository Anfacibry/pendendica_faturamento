import 'package:flutter/material.dart';

import 'formulario.dart';

class CaixaDeTexto extends StatefulWidget {
  final String titulo;
  final bool obrigatorio;
  const CaixaDeTexto(
      {required this.obrigatorio, required this.titulo, Key? key})
      : super(key: key);

  @override
  State<CaixaDeTexto> createState() => _CaixaDeTextoState();
}

class _CaixaDeTextoState extends State<CaixaDeTexto> {
  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Formulario(
              possuiLabel: false,
              largura: tamanho.width * 0.13,
              titulo: widget.titulo,
            ),
            SizedBox(
              height: tamanho.width * 0.13,
              child: const Center(child: Icon(Icons.search)),
            ),
            Formulario(
              possuiLabel: true,
              largura: tamanho.width * 0.7,
              titulo: widget.titulo,
            ),
            if (widget.obrigatorio)
              const Padding(
                padding: EdgeInsets.all(3),
                child: Text(
                  "*",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
