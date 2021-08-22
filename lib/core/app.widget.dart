import 'package:flutter/material.dart';
import 'package:framwork/Pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Flutter Responsivo Utilizando Framwork',
      theme: ThemeData(
        //*Tema claro
        brightness: Brightness.light,
        primaryColor: Colors.blue
      ),
      darkTheme: ThemeData(
        //*Tema Escuro
        brightness: Brightness.dark,
      ),
      //*themeMode: ThemeMode.system, -> caso o celular esteja habilitado a função de ativar o Thema do app automatico, isso sera feito aqui!
      //*O meu celular esta habilitado para sempre usar o tema escuro caso o app tenha, ou seja esse app teria o tema escuro
      themeMode: ThemeMode.light,
      home: MyHomePage(title: 'Usando Framwork para responsividade'),
      debugShowCheckedModeBanner: false,
    );
  }
}
