import 'package:flutter/material.dart';
import '../avatars/circular.dart';
import '../avatars/circular_borde.dart';
import '../avatars/rectangulo.dart';
import '../avatars/rectangulo_borde.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: (ListView(
        children: [
          Container(
            child: ListTile(
              title: Text('Avatar Circular'),
              leading: Icon(Icons.account_circle),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => CircularAvatar());
                    Navigator.push(context, route);
              },
            ),
          ),
          Container(
            child: ListTile(
              title: Text('Avatar circular con borde'),
              leading: Icon(Icons.account_circle),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => CircularAvatarBorde());
                    Navigator.push(context, route);
              },
            ),
          ),
          Container(
            child: ListTile(
              title: Text('Avatar rectangulo'),
              leading: Icon(Icons.account_circle),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => RectangularAvatar());
                    Navigator.push(context, route);
              },
            ),
          ),
          Container(
            child: ListTile(
              title: Text('Avatar rectangular con borde'),
              leading: Icon(Icons.account_circle),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => RectangularAvatarBorde());
                    Navigator.push(context, route);
              },
            ),
          ),
        ],
      )),
    );
  }
}
