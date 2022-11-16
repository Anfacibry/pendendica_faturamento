import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final String titulo;
  final bool possuiLabel;
  final bool tecladoNumerico;
  final double largura;
  final void Function()? fun;
  final List<Map<String, String>>? categoria;
  // final TextEditingController controller;
  const Formulario({
    this.fun,
    this.categoria,
    // required this.controller,
    required this.tecladoNumerico,
    required this.possuiLabel,
    required this.largura,
    required this.titulo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return SizedBox(
      height: tamanho.width * 0.13,
      width: largura,
      child: TextField(
        keyboardType:
            tecladoNumerico ? TextInputType.number : TextInputType.name,
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
        onTap: fun,
        // controller: controller,
      ),
    );
  }
}
