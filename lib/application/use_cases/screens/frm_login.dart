import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_catalogo.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_registro.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('backg/background.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'icon/icon.png',
                  width: 80,
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(157, 176, 190, 197),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(113, 158, 158, 158),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'ValMusic',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 134, 22, 22),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'STUDIOS',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Usuario',
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.all(10),
                          hintStyle:
                              TextStyle(color: Colors.grey[700], fontSize: 18),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Contraseña',
                            prefixIcon: Icon(Icons.lock),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                                color: Colors.grey[700], fontSize: 18),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2))),
                      ),
                    ),
                    SizedBox(height: 60),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Catalogo(),
                          ),
                        );
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'Entrar',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 134, 22, 22),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Registro(),
                  ),
                );
              },
              child: Text(
                '¿Aún no tienes cuenta?, Registrate',
                style: TextStyle(fontSize: 20, color: Colors.white54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
