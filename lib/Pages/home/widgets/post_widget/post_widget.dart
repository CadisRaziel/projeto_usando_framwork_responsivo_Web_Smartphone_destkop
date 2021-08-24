import 'package:flutter/material.dart';
import 'package:framwork/shared/themes/app_images.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //*Colocando comentarios caso for desktop
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      //*Caso for desktop tera 35 de espaçamento se nao for desktop vai ter 0 de espaçamento
      padding: EdgeInsets.only(top: desktop ? 16 : 0),
      child: Column(
        //*Posso colocar .stretch tambem pois eu coloquei um alinhamento start la em baixo
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(AppImages.foto),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    'nikolatesla',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Icon(
                      Icons.more_horiz_sharp,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            AppImages.foto,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.messenger_outline),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  color: Colors.white,
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'curtido por thomasedison e outras 2 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'HÁ 1 HORA',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          //! ... metodo de espanção, diz qeu eu vou por mais de 1 widget
          if (desktop) ...[
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          hintText: 'Adicione um comentário...',
                          hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                        )),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Publicar'),
                ),
              ],
            )
          ]
        ],
      ),
    );
  }
}
