import 'package:flutter/material.dart';
import 'package:framwork/Pages/home/widgets/stories_list/storie_circle.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //*Olha que interessante essa variavel, como foi definido no app_widget os nomes MOBILE, TABLET, DESKTOP padrão
   //* Eu posso usar um isMobile, ele é a mesma coisa que MOBILE = False; 
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110,
      //*Margin para dar um espaçamento da appbar 
      //*definindo a variavel mobile podemos realizar essa condição, se for mobile poe 15 se não for coloca 35
      margin: EdgeInsets.symmetric(vertical: mobile ? 15 : 35),
      //*ListView.separated -> pois entre cada um dos stories queremos dar um pequeno espaçamento
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        //*para nao ficar colado nas laterais
        padding: const EdgeInsets.symmetric(horizontal: 16),

        //*itemBuilder conteudo que sera apresentado 
        itemBuilder: (context, index) => StoryCircle(),

        //*separatorBuilder -> da os espaçamentos
       separatorBuilder: (context, index) => const SizedBox(width: 16,),

        //*itemCount quantidade de itens, geralmente vem de uma api ou databse e usamos .lenght
        itemCount: 25,
      ),
    );
  }
}