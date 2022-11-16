import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/tela_pendencia_formulario.dart';

void main() {
  runApp(const PendenciaFaturamento());
}

class PendenciaFaturamento extends StatelessWidget {
  const PendenciaFaturamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const TelaPendenciaFaturamento(),
    );
  }
}
