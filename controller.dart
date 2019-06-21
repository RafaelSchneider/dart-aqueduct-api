import 'package:aqueduct/aqueduct.dart';

import 'lib/model/Person.dart';
import 'lib/service/PersonService.dart';

class Controller extends ResourceController {

  PersonService service;

  @Operation.get()
    Person get() {
    return null;
  }
}