import 'package:flutter/material.dart';

class DadosNoCard extends StatelessWidget {
  final String chave;
  final String valor;
  const DadosNoCard({required this.chave, required this.valor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Text(
              chave,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              " - ",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              valor,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
