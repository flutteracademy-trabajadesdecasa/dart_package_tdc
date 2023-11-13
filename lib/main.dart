import 'dart:convert';

import 'package:dart_package_tdc/app/data/models/class/person_model.dart';
import 'package:dart_package_tdc/app/utils/json_response.utils.dart';
import 'package:http/http.dart';

void main() {
  // Decodificar el JSON a un mapa
  Map<String, dynamic> personaMap =
      jsonDecode(JsonResponseUtils.jsonDataPerson);

  print(personaMap);

  // Crear una instancia de Persona a partir del mapa
  Persona persona = Persona.fromJson(personaMap);

  print(persona);
  print(persona.firstName);
}
