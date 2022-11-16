import 'package:flutter/material.dart';
import 'package:pendencia_faturamento/components/cabecalho.dart';

class TelaPendenciaFaturamento extends StatelessWidget {
  const TelaPendenciaFaturamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: const Text("Pendencia de Faturamento"),
          actions: const [
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            tabs: [
              Text(
                "Cabeçalho",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "Catálogo",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "Carrinho",
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Cabecalho(),
            ),
            const Center(child: Text("Catálogo")),
            const Center(child: Text("Carrinho")),
          ],
        ),
      ),
    );
  }
}
