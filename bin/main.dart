import 'package:aqueduct_api/channel/aqueduct_api.dart';
import 'package:aqueduct_api/channel/channel.dart';

Future main() async {
  final app = Application<Channel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 8888;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}