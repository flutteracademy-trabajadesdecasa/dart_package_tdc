import 'dart:convert';

import 'package:dart_package_tdc/app/data/models/class/person_model.dart';
import 'package:dart_package_tdc/app/data/services/reqres_services.dart';
import 'package:dart_package_tdc/app/utils/json_response.utils.dart';
import 'package:http/http.dart';

void main() async {
  // Decodificar el JSON a un mapa
  Map<String, dynamic> personaMap =
      jsonDecode(JsonResponseUtils.jsonDataPerson);

  print(personaMap);

  // Crear una instancia de Persona a partir del mapa
  Persona persona = Persona.fromJson(personaMap);

  print(persona);
  print(persona.firstName);

  ServicesReqresApi servicesReqresApiInstance = ServicesReqresApi();

  List<Persona> misPersonas =
      await servicesReqresApiInstance.getReqRespServiceListUsers();

  print(misPersonas);

  Persona miPersona = await servicesReqresApiInstance.getSinglePerson();

  print(miPersona);

  PersonaDTO miPersonaDTO =
      await servicesReqresApiInstance.getSinglePersonDTO();

  print(miPersonaDTO);
  print(miPersonaDTO.data);
  print(miPersonaDTO.support);
}
