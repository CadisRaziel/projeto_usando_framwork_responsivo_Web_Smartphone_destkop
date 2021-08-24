import 'package:flutter/material.dart';
import 'package:framwork/shared/themes/app_images.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ResponsiveMenu extends StatelessWidget {
  const ResponsiveMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //*Condição criada para colocar e tirar o expanded de acordo com a tela
    //*Ou seja, quando for mobile ele tira o expanded, quando nao for mobile ele coloca o expanded
    //! repare que vamos usar essa classe no 'responsive_app_bar' dentro de um 'ResponsiveVisibility', LEIA A INSTRUÇÃO LA NA TELA !!
    return  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               ResponsiveVisibility(
                 //*Quando for menor que um TABLET significa que vamos estar em um mobile
                 //*Com no mobile aparece o icone SEARCH e em tablet e desktop o ICONE SEARCH SOME e aparece a barra de pesquisa
                 visible: false,
                 visibleWhen: [
                   Condition.smallerThan(name: TABLET)
                 ],
                 child:  IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                const SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(AppImages.foto),
                )
              ],
            );
      
    
  }
}