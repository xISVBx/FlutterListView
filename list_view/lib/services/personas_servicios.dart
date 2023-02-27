import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:list_view/global/enviroment.dart';
import 'package:list_view/models/persona.dart';

class PersonasServicios{
  
  Future<Personas> obtenerTodos() async{
    try{
      print('${Enviroment.apiUrl}/contacts');
      var response = await http.get(Uri.parse('${Enviroment.apiUrl}/contacts'));
      if(response.statusCode == 200){
        final decoded = await json.decode(response.body);
        print(decoded['data']);
        return Personas.fromJson(decoded['data']);
    }
      return Personas(personas: []);
    }catch(error){

    print(error);
    return Personas(personas: []);
    }
    
  }
}