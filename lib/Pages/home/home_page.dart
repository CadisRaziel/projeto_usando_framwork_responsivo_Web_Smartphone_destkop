import 'package:flutter/material.dart';
import 'package:framwork/Pages/home/widgets/app_bar/responsive_app_bar.dart';
import 'package:framwork/Pages/home/widgets/post_widget/post_widget.dart';
import 'package:framwork/Pages/home/widgets/right_panel/right_panel.dart';
import 'package:framwork/Pages/home/widgets/stories_list/storie_list.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* estamos usando Colors.black87 pois é a mesma que esta no storie_circle
      backgroundColor: Colors.black87,
        appBar: PreferredSize(
      child: ResponsiveAppBar(),
      //*double.infinity -> para que o appbar pegue toda a largura
      //*52 -> para que o appbar mantenha 52 de altura
      preferredSize: Size(double.infinity, 52),
    ),
      body: Align(
        //*Align para alinhar o body no centro e no topo
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          //*Para poder por o painel lateral quando tiver em desktop precisei envolver a listView em uma Row
          child: Row(
            children: [
              //*Expanded para minha listView ocupar toda largura
              Expanded(
          //*ListView porque tem o scroll
                child: ListView(
                  children: [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              RightPanel(),
            ],
          )
          ),
      ),
    );
  }
}
