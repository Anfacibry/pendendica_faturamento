import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final String titulo;
  final bool possuiLabel;
  final double largura;
  const Formulario(
      {required this.possuiLabel,
      required this.largura,
      required this.titulo,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return SizedBox(
      height: tamanho.width * 0.13,
      width: largura,
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          label: possuiLabel
              ? Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : null,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
        ),
      ),
    );
  }
}
