
import 'package:aqueduct/aqueduct.dart';

import 'service/PersonService.dart';
import 'aqueduct_api.dart';

class Channel extends ApplicationChannel {

  PersonService service;

  @override
  Controller get entryPoint {
    final router = Router();
    service = PersonService();

    var map = service.getPerson().asMap();

    router
        .route("/person")
        .linkFunction((request) async {
      return Response.ok(map)..contentType = ContentType.json;
    });

    return router;
  }

}