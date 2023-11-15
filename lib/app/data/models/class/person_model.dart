// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResponseListPersons {
  final List<Persona>? data;

  ResponseListPersons({this.data});

  factory ResponseListPersons.fromJson(Map<String, dynamic> json) {
    return ResponseListPersons(
      data: json['data'] != null
          ? List<Persona>.from(json['data'].map((x) => Persona.fromJson(x)))
          : null,
    );
  }
}

class PersonaDTO {
  final Persona? data;
  dynamic support;

  PersonaDTO({this.data, this.support});

  factory PersonaDTO.fromJson(Map<String, dynamic> json) {
    return PersonaDTO(
      data: json['data'] != null ? Persona.fromJson(json['data']) : null,
      support: json['support'],
    );
  }
}

class Persona {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  Persona({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  // Constructor para crear una instancia de Persona a partir de un mapa JSON
  factory Persona.fromJson(Map<String, dynamic> json) {
    return Persona(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'avatar': avatar,
    };
  }

  @override
  String toString() {
    return 'Persona{id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar}';
  }
}

abstract class APIResponse {
  int statusCode;
  APIResponse({
    required this.statusCode,
  });
}
