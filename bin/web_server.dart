import 'dart:io';

import 'package:web_server/router_system/router.dart';
import 'package:web_server/router_system/server.dart';

void main(List<String> arguments) async {
  CustomRouter customRouter =
      CustomRouter().get('/login', [], (request, response) {
    response.write('Hello from the world');
  });

  var server = await CustomServer(
    customRouter,
    InternetAddress.anyIPv4,
    8000,
  ).bind();
  print('listening on ${server.port}');
}
