import 'package:flutter/material.dart';

import 'package:pendencia_faturamento/components/dados_no_card.dart';

import 'formulario.dart';

class CaixaDeTexto extends StatelessWidget {
  final String titulo;
  final bool obrigatorio;
  final List<Map<String, String>> categoria;
  const CaixaDeTexto({
    required this.categoria,
    required this.obrigatorio,
    required this.titulo,
    Key? key,
  }) : super(key: key);

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
              titulo: titulo,
              tecladoNumerico: true,
            ),
            InkWell(
              onTap: () => showDialogo(categoria, context, tamanho),
              child: SizedBox(
                height: tamanho.width * 0.13,
                child: const Center(child: Icon(Icons.search)),
              ),
            ),
            Formulario(
              possuiLabel: true,
              largura: tamanho.width * 0.7,
              titulo: titulo,
              tecladoNumerico: false,
              fun: () => showDialogo(categoria, context, tamanho),
            ),
            if (obrigatorio)
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

void showDialogo(
  List<Map<String, String>> categoria,
  BuildContext context,
  Size tamanho,
) {
  TextEditingController controller = TextEditingController();
  showDialog(
    context: context,
    builder: (contextDialog) {
      return AlertDialog(
        title: TextField(
          decoration: const InputDecoration(
            labelText: "Pesquisa pelo código ou descrição",
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blue,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
          controller: controller,
        ),
        content: SizedBox(
          height: tamanho.height * .6,
          width: tamanho.width * .8,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: categoria.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: DadosNoCard(
                chave: categoria[index]["chave"].toString(),
                valor: categoria[index]["descricao"].toString(),
              ),
            ),
          ),
        ),
      );
    },
  );
}
