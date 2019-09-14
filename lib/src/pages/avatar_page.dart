import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://vignette.wikia.nocookie.net/goldsaintseiya/images/b/bf/300px-Kanon_de_geminis%2C_kanon_geminis%2C_saga_y_kanon%2C_animes_atractivos.jpg/revision/latest?cb=20110927173122&path-prefix=es'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('GR'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://vignette.wikia.nocookie.net/doblaje/images/0/07/KanondeGeminisSaintSeiya02.png/revision/latest?cb=20190808174117&path-prefix=es'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 2000),
        ),
      ),
    );
  }
}