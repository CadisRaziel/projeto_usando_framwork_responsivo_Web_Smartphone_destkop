import 'package:flutter/material.dart';
import 'package:framwork/Pages/home/widgets/menu/responsive_menu.dart';
import 'package:framwork/shared/themes/app_text_style.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Center(
        //*Center -> para centralizar a appBar
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              //*MouseRegion -> para que ao por o mouse em cima do 'Flutter' ele mude o aspecto do cursor
              //* click -> vai aparecer a 'maozinha'
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'Flutter',
                    style: TextStyles.titleHome,
                  ),
                ),
              ),
              //* CAMPO DE PESQUISA
              ResponsiveVisibility(
                //*ResponsiveVisibility -> vamos utilizar esse componente que é do framwork, para toda vez qeu diminuir a tela, a barra de pesquisa sumir ao diminuir
                //*visibleWhen -> tambem do framwork, vamos utiliza-lo pois ele é 'visivel, quando' ou seja, quando for mobile ele fica invisivel, tablet e desktop ele fica visivel
                visibleWhen: [
                  //* Ou seja quando for maior que MOBILE ele aparece a barra de pesquisa
                  Condition.largerThan(name: MOBILE)
                ],
                //*Coloque false aqui no visibile para a condição acima ter efeito
                visible: false,
                child: Expanded(
                  //*Align -> colocamos o Align aqui para que o container fique com a largura de 200, e o Expanded pegue so a largura do Align ou seja estou centralizando
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 30,
                      //*alignment -> Alinhando o curso do lado esquerdo no centro
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                          //*Colocando um retangulo com bordas
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: 12, color: Colors.white),
                              decoration: InputDecoration(
                                //*Tira o risco debaixo do input
                                border: InputBorder.none,
                                //* isCollapsed -> mantenha true para poder alinhar o cursor
                                isCollapsed: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
             ResponsiveVisibility(
               //*ResponsiveVisibility -> vamos utilizar esse componente que é do framwork, para toda vez qeu diminuir a tela, a barra de pesquisa sumir ao diminuir
                //*visibleWhen -> tambem do framwork, vamos utiliza-lo pois ele é 'visivel, quando' ou seja, quando for mobile ele fica invisivel, tablet e desktop ele fica visivel
                visibleWhen: [
                  //* Ou seja quando for maior que MOBILE ele aparece a barra de pesquisa
                  Condition.largerThan(name: MOBILE)
                ],
                visible: false,
                //! Quando a condição acima for verdadeira ele utiliza o Expanded, quando não for verdadeira ele usa o replacement sem o Expanded
                //! Ou seja quando for mobile ele cria sem expanded, e se for maior ele usa o expanded
                //! note que é a mesma classe instanciada em dois locais diferentes
                replacement: ResponsiveMenu(),
               child: Expanded(
                 child: ResponsiveMenu(),
               )
               )
            ],
          ),
        ),
      ),
    );
  }
}
