import 'package:flutter/material.dart';
import 'package:tarea2/src/utils/routes.dart';

class Login extends StatelessWidget {
  Login({Key? key});

  final emailController = TextEditingController();
  final cuentaController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Image(
                  image: AssetImage('assets/img/login.png'),
                  width: 300,
                  height: 200,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ingrese su correo',
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                controller: emailController,
              ),
              SizedBox(height: 60),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Ingrese su contraseña',
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                controller: cuentaController,
              ),
              SizedBox(height: 50),
              FloatingActionButton(
                onPressed: () {
                  infoUser(
                      context, emailController.text, cuentaController.text);
                },
                backgroundColor: Color.fromARGB(255, 255, 234, 49),
                child: Icon(Icons.login, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void infoUser(BuildContext context, String email, String cuenta) {
    if (email == 'edgard.ordonez@unah.hn' && cuenta == '20192002919') {
      Navigator.pushNamed(context, MyRoutes.welcome.name);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Usuario o contraseña incorrectos'),
            backgroundColor: const Color.fromARGB(255, 251, 82, 70),
            duration: Duration(seconds: 4)),
      );
    }
  }
}
