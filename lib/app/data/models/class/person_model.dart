class Persona {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  Persona({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
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

  @override
  String toString() {
    return 'Persona{id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar}';
  }
}
