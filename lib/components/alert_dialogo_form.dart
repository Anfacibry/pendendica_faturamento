import 'package:flutter/material.dart';

import 'package:pendencia_faturamento/components/dados_no_card.dart';

class AlertaDeDialogoForm extends StatelessWidget {
  final List<Map<String, String>> categoria;
  const AlertaDeDialogoForm({required this.categoria, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return AlertDialog(
      title: const TextField(
        decoration: InputDecoration(
          labelText: "Pesquisa pelo código ou descrição",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
      content: SizedBox(
        height: tamanho.height * .6,
        width: tamanho.width * .8,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: categoria.length,
          itemBuilder: (context, index) => DadosNoCard(
            chave: categoria[index]["chave"].toString(),
            valor: categoria[index]["descricao"].toString(),
          ),
        ),
      ),
    );
  }
}
