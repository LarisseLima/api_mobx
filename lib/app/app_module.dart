import 'package:flutter/material.dart';
import 'package:api_mobx/pages/home_controller.dart';
import 'package:api_mobx/pages/home_page.dart';
import 'package:api_mobx/pages/splash.dart';
import 'package:api_mobx/respositories/covidapi_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';

class AppModule extends MainModule {

  //Injeção de dependências
  @override
  List<Bind> get binds => [
      Bind((i) => CovidApiRepository()), 
      Bind((i) => HomeController()), 
  ];

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => SplashPage()),     
    Router("/home", child: (_, args) => HomePage()),     
  ];

  @override
  Widget get bootstrap => AppWidget();
}
