import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle; //con show se especifica que se importa de una libreria general

class MenuProvider{
  List<dynamic> opciones=[]; //lista dinamica

  _MenuProvider(){} //constructor

  Future<List<dynamic>> cargarData() async{ //futuro de tipo list de tipo dinamico, tiene que ser async siempre
    final resp = await rootBundle.loadString('data/menu_opts.json'); //la respuesta tiene que esperar un rootBundle, con el metodo loadstring y una ruta local
    Map dataMap = jsonDecode(resp); //decodificar el json resp a un mapa
    print(dataMap);//imprimir el mapa
    print(dataMap['rutas']);//imprimir "rutas" del mapa
    opciones = dataMap['rutas']; //asignar el mapa a opciones
    return opciones;  //regresar opciones
  }

}

final menuProvider = new MenuProvider(); //crear un objeto de tipo _MenuProvider