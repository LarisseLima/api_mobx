import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Rota inicial
      initialRoute: "/",
      navigatorKey: Modular.navigatorKey,
      // Add modular para o gerenciamento de rotas
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
