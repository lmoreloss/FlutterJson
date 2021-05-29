import 'package:flutter/material.dart';
class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: <Widget>[


          Card(
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('Una tarjeta tocable'),
          ),
          )
          ),

          Card(
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/ae/Sierra_Madre_Occidental.jpg'),
                ),
                Text('Imagen con tarjeta')
              ],
            ),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          ),

          Card(
            child: Column(
              children: <Widget>[
                Text('Tarjeta con color')
              ],
            ),
          color: Colors.orange,
          ),

          Card(
          child: SizedBox(
            width: 300,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: Text('Card con botones'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(onPressed: (){}, child: Text('Soy un boton'))
                  ],
                )
              ],
            ),
          ),
          ),

        ],
      ),
    );
  }
}