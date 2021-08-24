import 'package:flutter/material.dart';
import 'package:framwork/shared/themes/app_images.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //*Esse container vai fazer a borda dizendo que tem um storie novo
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Colors.red, Colors.orange],
                //*Onde começa e onde termina a cor do gradient
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          //!Como estamos utilizando 2 container, nao esqueca de especificar o 'alignment.center'
          //! se nao o container abaixo vai ser utilizlado como conteudo para o contaniner acima tanto tamanho quanto conteudo
          alignment: Alignment.center,
          //*Esse container vai ser menor que o primeiro para conter a imagem
          child: Container(
            height: 62,
            width: 62,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
            //!Para não ocorrer o mesmo que o alerta ali de cima !!!
            alignment: Alignment.center,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(AppImages.foto),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4,),
        Text('nikolastesla', style: TextStyle(fontSize: 12, color: Colors.white),),
      ],
    );
  }
}
