
import 'package:aqueduct/aqueduct.dart';
import 'package:aqueduct_api/service/PersonService.dart';

import 'package:aqueduct_api/channel/aqueduct_api.dart';

class Channel extends ApplicationChannel {

  PersonService service;

  ManagedContext context;

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

  @override
  Future prepare() async {
    var dataModel = new ManagedDataModel.fromCurrentMirrorSystem();
    var store = new PostgreSQLPersistentStore.fromConnectionInfo(
        "postgres", "admin", "localhost", 5432, "dartdb");
    context = new ManagedContext(dataModel, store);
  }
}