import '../utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import '../providers/menu_provider.dart';

class HomepageTemp extends StatelessWidget {

  // final List<String> opciones = [
  //   'uno',
  //   'dos',
  //   'tres',
  //   'cuatro',
  //   'cinco',
  //   'seis'
  // ];

  
  List<dynamic> menuData = new List(); //menuData de tipo List<dynamic>

  Future<dynamic> cargarDatos() async{
    this.menuData = await MenuProvider().cargarData(); //funcion para cargar los datos de MenuProvider con el metodo cargarData
  }

  var _calculo = Future<dynamic>.delayed(const Duration(milliseconds: 2)); //una variable de tipo futuro dinamico, para que todo funcione

  HomepageTemp(){
    _calculo = cargarDatos(); //constructor donde se asigna lo que devuelva cargarDatos (que en este caso es una lista) a _calculo
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes widgets'),
      ),
      // body: ListView(
      //   children: <Widget>[
      //     ListTile(
      //       title: Text('Prueba1'),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text('Prueba2'),
      //     ),
      //   ],
      // ),
      body: Wrap(children: [
        //..._crearItems(context),
        FutureBuilder(future: _calculo, builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) { //el futurebuilder funciona pasandole un futuro al cual esperar
                                  //con un builder el el contexto actual. esas lineas siempre lo llevan
          List<Widget> children;  //los hijos del widget que va a devolver seran tipo lista
          if(snapshot.hasData){   //si el snapshot de _calculo tiene datos (en este caso se los pasamos del metodo cargarData())
            children = <Widget>[                  //tendra hijos de tipo widget
              ..._listarItems(context, menuData), //los cuales son el metodo para listar los items
            ];
          }else{
            children = <Widget>[
              ..._listarItems(context, menuData),
            ];
          }
          return Center(
            child: Column(
              children: children, //finalmente regresar un widget center con los hijos del futurebuilder
            ),
          );
          },
          )
        
        
      ]),
    );
  }

  // List<Widget> _crearItems(BuildContext context) {
  //   List<Widget> lista = new List<Widget>();
  //   for (String opt in opciones) {
  //     //por cada elemento de string en el array opciones
  //     final tempWidget = ListTile(
  //       //se hace un widget temporal de tipo ListTile con los siguientes parametros
  //       title: Text(opt),
  //       subtitle: Text('Subtitulo de ' + opt),
  //       leading: Icon(Icons.account_balance_sharp),
  //       trailing: Icon(Icons.ac_unit),
  //       onTap: () {
  //         showDialog(context: context, builder: (BuildContext context)=> _buildPopUpDialog(context, opt)); //Un contexto es la pagina actual
  //       },
  //     );
  //     lista
  //       ..add(tempWidget)
  //       ..add(
  //           Divider()); //esta linea hace lo mismo que las 2 siguientes, gracias al doble punto
  //     // lista.add(tempWidget);
  //     // lista.add(Divider());
  //   }
  //   return lista; //regress lista, que es un objeto de tipo list
  // }

   List<Widget> _listarItems(BuildContext context, List<dynamic> datos) {
    final List<Widget> lista = [];
    datos.forEach((opt) {
      final tempWidget = ListTile(
        //se hace un widget temporal de tipo ListTile con los siguientes parametros
        title: Text(opt['texto']),
        subtitle: Text('Subtitulo de ' + opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.blueAccent),
        onTap: () {
          showDialog(context: context, builder: (BuildContext context)=> _buildPopUpDialog(context, opt['texto'])); //Un contexto es la pagina actual
        },
      );
      lista
        ..add(tempWidget)
        ..add(
            Divider()); //
     });
    return lista; //regress lista, que es un objeto de tipo list
  }


  Widget _buildPopUpDialog(BuildContext context, String opt) { //se crea un widget de nombre _buuildPopUpDialog con los parametros BuildContext y String
    return new AlertDialog( //se regresa un nuevo dialogo de alerta
      title: const Text('Me diste click'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hola soy la opcion ' + opt),
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
