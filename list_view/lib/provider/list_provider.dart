import 'package:flutter/material.dart';
import 'package:list_view/models/persona.dart';
import 'package:list_view/services/personas_servicios.dart';

class ListProvider with ChangeNotifier{
  late Future<Personas> list;

  ListProvider() {
    load();    
  }

  load(){
    list =  PersonasServicios().obtenerTodos();
    notifyListeners();
  }
}