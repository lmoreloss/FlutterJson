import 'package:flutter/material.dart';
class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      ),
      body: ListView(
        children: <Widget>[

          GestureDetector(
            onTap: () {
              showDialog(context: context, builder: (BuildContext context)=>_buildPopUpDialog(context, NetworkImage('https://cdn.icon-icons.com/icons2/195/PNG/256/YouTube_23392.png')));
            },
            child: CircleAvatar(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://cdn.icon-icons.com/icons2/195/PNG/256/YouTube_23392.png'),
              )
            )
          ),

          GestureDetector(
            onTap: () {
              showDialog(context: context, builder: (BuildContext context)=>_buildPopUpDialog(context, NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Wikipedia_article_icon_BLACK.svg/1200px-Wikipedia_article_icon_BLACK.svg.png')));
            },
            child: CircleAvatar(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Wikipedia_article_icon_BLACK.svg/1200px-Wikipedia_article_icon_BLACK.svg.png'),
              )
            )
          ),



        ],
      ),
    );
  }

  Widget _buildPopUpDialog(BuildContext context, NetworkImage icono) { //se crea un widget de nombre _buuildPopUpDialog con los parametros BuildContext y String
    return new AlertDialog( //se regresa un nuevo dialogo de alerta
      title: const Text('Me diste click'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
              child: CircleAvatar(
                backgroundImage: icono,
                radius: 500.0,
              )
            )
        ],
      ),
      actions: <Widget>[
        new FlatButton( //se crea un flatbutton
          onPressed: () { //cuando se presiona
            Navigator.of(context).pop(); //revienta el mensaje
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Cerrar'),
        ),
      ],
    );
  }
}