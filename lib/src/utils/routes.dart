import 'package:tarea2/src/pages/login.dart';
import 'package:tarea2/src/pages/welcome.dart';

enum MyRoutes { login, welcome }

final routes = {
  MyRoutes.login.name: (context) => Login(),
  MyRoutes.welcome.name: (context) => const Welcome(),
};
