import 'dart:convert';

import 'package:dart_package_tdc/app/data/models/class/person_model.dart';

class MockPersons {
  static PersonaDTO myPersonFake = PersonaDTO.fromJson(
    {
      'data': {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
      },
    },
  );
}
