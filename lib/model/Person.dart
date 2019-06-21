

import 'package:aqueduct/aqueduct.dart';

class Person extends Serializable{
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  @override
  Map<String, dynamic> asMap() => {
    'name': name,
    'age': age,
  };

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }

}
