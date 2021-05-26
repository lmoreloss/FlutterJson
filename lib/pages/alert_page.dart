import 'package:flutter/material.dart';
class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: ListView(
        children: [


          ListTile(
            title: Text('SimpleDialog'),
            leading: Icon(Icons.stay_primary_landscape, color: Colors.blue,),
            trailing: Icon(Icons.chevron_right_sharp),
            onTap: () {
               showDialog(context: context, builder: (BuildContext context)=>
                SimpleDialog(
                 title: Text('Este es un dialogo simple'),
                 children: <Widget>[
                   SimpleDialogOption(
                      onPressed: (){
                          Navigator.of(context).pop();
                        },
                      child: Text('Cerrar'),
                    ),
                  ],
                )
               );
            },
          ),


          Divider(),
          

          ListTile(
            title: Text('AlertDialog'),
            leading: Icon(Icons.battery_alert, color: Colors.blue,),
            trailing: Icon(Icons.chevron_right_sharp),
            onTap: () {
               showDialog(context: context, builder: (BuildContext context)=>
                AlertDialog(
                  title: Text('Este es un dialogo de alerta'),  
                  content: Text('Subtexto'),   
                   actions: [
                   FlatButton(
                     onPressed: () {
                       Navigator.of(context).pop();
                     },
                      child: Text('Aceptar'),
                    ),
                 ],
               ),
               );
            },
          ),


          Divider(),


          ListTile(
            title: Text('ShowDialog'),
            leading: Icon(Icons.slideshow, color: Colors.blue,),
            trailing: Icon(Icons.chevron_right_sharp),
            onTap: () {
               showDialog(
                  context: context, builder: (BuildContext context) {
                    return Expanded(
                      child: AlertDialog(
                        title: Text('Este es un ShowDialog'),
                        content: Text('Subtexto'),
                        actions: [
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Aceptar'),
                          ),
                        ],
                      ),
                    );
                  },
                );
            },
          ),


        ],
      ),
    );
  }
}