import 'package:aqueduct/aqueduct.dart';
import 'package:aqueduct_api/model/Person.dart';
import 'package:aqueduct_api/service/PersonService.dart';

class Controller extends ResourceController {

  PersonService service;

  @Operation.get()
    Person get() {
    return null;
  }
}