import 'package:flutter/material.dart';

class InformCabecalho extends StatelessWidget {
  final String cabecalho;
  final bool negrito;
  const InformCabecalho({
    required this.negrito,
    required this.cabecalho,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        cabecalho,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
          fontWeight: negrito ? FontWeight.w800 : FontWeight.w400,
        ),
      ),
    );
  }
}
