import 'package:flutter/material.dart';
import 'package:framwork/Pages/home/home_page.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Flutter Responsivo Utilizando Framwork',
      theme: ThemeData(
          //*Tema claro
          brightness: Brightness.light,
          primaryColor: Colors.blue),
      darkTheme: ThemeData(
        //*Tema Escuro
        brightness: Brightness.dark,
      ),
      //*themeMode: ThemeMode.system, -> caso o celular esteja habilitado a função de ativar o Thema do app automatico, isso sera feito aqui!
      //*O meu celular esta habilitado para sempre usar o tema escuro caso o app tenha, ou seja esse app teria o tema escuro
      themeMode: ThemeMode.light,

      //!Adicionando o Framwork responsivo
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          //*minWidth -> se eu coloco 480 aqui, o primeiro breakpoint na lista abaixo deve ser tambem 480 !!!
          minWidth: 480,
          maxWidth: 1200,
          //*defaultScale -> mantenha true para deixar o framwork ativo !
          defaultScale: true,
          //! Nunca esqueça de por o defaultName, com isso até 799 ele considera que é mobile
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ]),
      home: MyHomePage(title: 'Usando Framwork para responsividade'),
      debugShowCheckedModeBanner: false,
    );
  }
}
