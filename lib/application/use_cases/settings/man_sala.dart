import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/functions/fun_AddSala.dart';
import 'package:valmusicstudios/infrastructure/controllers/entity_controller/csala.dart';

class manSala extends StatefulWidget {
  manSala({super.key});

  @override
  State<manSala> createState() => _manSalaState();
}

class _manSalaState extends State<manSala> {
  final _codSala = TextEditingController();
  final _nomSala = TextEditingController();
  final _imaSala = TextEditingController();
  final _estSala = TextEditingController();
  final _desSala = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('backg/madera.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(90, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
            ),
            child: CustomScrollView(slivers: [
              SliverGrid(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Añadir Sala',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              child: Text(
                                'Codigo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 200,
                              height: 20,
                              child: TextField(
                                textAlign: TextAlign.end,
                                controller: _codSala,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              child: Text(
                                'Nombre',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 200,
                              height: 20,
                              child: TextField(
                                textAlign: TextAlign.end,
                                controller: _nomSala,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              child: Text(
                                'Imagen',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 200,
                              height: 20,
                              child: TextField(
                                textAlign: TextAlign.end,
                                controller: _imaSala,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              child: Text(
                                'Estado',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 200,
                              height: 20,
                              child: TextField(
                                textAlign: TextAlign.end,
                                controller: _estSala,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              child: Text(
                                'Descripción',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 200,
                              height: 20,
                              child: TextField(
                                textAlign: TextAlign.end,
                                controller: _desSala,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
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
                                      addSala(
                                        _codSala.text.toString(),
                                        _nomSala.text.toString(),
                                        _imaSala.text.toString(),
                                        _desSala.text.toString(),
                                        _estSala.text.toString(),
                                      );
                                      AddSalas(
                                        nomsala: _nomSala.text.toString(),
                                        imsala: _imaSala.text.toString(),
                                        essala: _estSala.text.toString(),
                                        desSala: _desSala.text.toString(),
                                      );
                                    },
                                    child: Container(
                                      color: Color.fromARGB(254, 41, 132, 75),
                                      padding: const EdgeInsets.all(14),
                                      child: const Text(
                                        "Guardar",
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
                          child: Text('Agregar'),
                        )
                      ],
                    ),
                  ),
                ]),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 3000,
                  crossAxisSpacing: 1500,
                  mainAxisExtent: 600,
                ),
              )
            ]),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new),
        splashColor: Colors.red[900],
      ),
    );
  }
}
