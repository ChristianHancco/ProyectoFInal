import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_login.dart';
import 'package:valmusicstudios/infrastructure/controllers/entity_controller/cusuario.dart';

class RegAdmin extends StatefulWidget {
  const RegAdmin({super.key});

  @override
  State<RegAdmin> createState() => _RegAdminState();
}

class _RegAdminState extends State<RegAdmin> {
  final _login = TextEditingController();
  final _contrasena = TextEditingController();
  final _codigo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('backg/registro.png'),
          fit: BoxFit.cover,
        ),
      ),
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
                  color: Color.fromARGB(228, 176, 190, 197),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(127, 225, 0, 255),
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
                        'Registrar Administrador',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 70, 55, 121),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Ingrese los Datos de Administrador',
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
                        controller: _login,
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
                        controller: _contrasena,
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
                    SizedBox(height: 40),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        obscureText: false,
                        controller: _codigo,
                        decoration: InputDecoration(
                            hintText: 'Codigo',
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
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: const Text(
                                "Los datos brindados estan listos para ser guardados"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  color: Color.fromARGB(255, 159, 42, 42),
                                  padding: const EdgeInsets.all(14),
                                  child: const Text(
                                    "Cancelar",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  addAdmin(
                                    _codigo.text.toString(),
                                    _login.text.toString(),
                                    _contrasena.text.toString(),
                                  );
                                  //Navigator.of(context).pop();
                                },
                                child: Container(
                                  color: Color.fromARGB(254, 41, 132, 75),
                                  padding: const EdgeInsets.all(14),
                                  child: const Text(
                                    "Registrar",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
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
                                'Registrar',
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
                          color: Color.fromARGB(255, 70, 55, 121),
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
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new),
          splashColor: Colors.red[900],
        ),
      ),
    );
  }
}
