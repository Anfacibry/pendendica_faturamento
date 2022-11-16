import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendencia_faturamento/components/inform_cabecalho.dart';

import '../data/repositorio.dart';
import 'caixa_de_texto.dart';

class Cabecalho extends StatelessWidget {
  Cabecalho({Key? key}) : super(key: key);
  final Repositorio repositoriaPego = Get.put(Repositorio());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InformCabecalho(
            cabecalho: "Cabeçalho de Nota",
            negrito: true,
          ),
          const InformCabecalho(
            cabecalho: "Preencha as informações de cabeçalho do pedido",
            negrito: false,
          ),

          ///Formilários para preenchimento das informações
          CaixaDeTexto(
            titulo: "Empresa",
            obrigatorio: true,
            categoria: repositoriaPego.empresa,
          ),
          CaixaDeTexto(
            titulo: "Perceiro",
            obrigatorio: true,
            categoria: repositoriaPego.parceiro,
          ),
          CaixaDeTexto(
            titulo: "Linha do Procedimento",
            obrigatorio: true,
            categoria: repositoriaPego.procedimento,
          ),
          const CaixaDeTexto(
            titulo: "Cód. Representante",
            obrigatorio: false,
            categoria: [],
          ),
          const CaixaDeTexto(
            titulo: "Gerente",
            obrigatorio: false,
            categoria: [],
          ),
          const CaixaDeTexto(
            titulo: "Cód. Gerente",
            obrigatorio: false,
            categoria: [],
          ),
        ],
      ),
    );
  }
}
