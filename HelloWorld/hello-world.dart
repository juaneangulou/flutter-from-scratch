import 'dart:io';

void main() {
  print('¡Hola! Bienvenido al calculador de años.');
  print('Escribe tu nombre: ');
  String? nameInput = stdin.readLineSync();
  print('Un gusto conocerte $nameInput');
  print('Escribe tu fecha de nacimiento en formato dd/mm/yyyy: ');
  String? birthdayInput = stdin.readLineSync();
  DateTime? dateConverted = DateTime.tryParse(birthdayInput!);
  if (dateConverted == null) {
    print('La fecha de nacimiento es inválida, nos enviaste: $birthdayInput');
    return;
  }
  var person = Person(
    name: nameInput,
    birthday: dateConverted,
    age: DateTime.now().year - dateConverted.year,
  );

  print('Tu nombre: ${person.name}');
  print('Tu fecha de nacimiento: ${person.birthday}');
  print('¡Tu edad es ${person.age} años!');
}

class Person {
  final String? name;
  final DateTime? birthday;
  final int? age;
  Person({this.name, this.birthday, this.age});
}
