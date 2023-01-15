import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_catalogo.dart';

class Reserva extends StatefulWidget {
  String imagen;
  String nombre;
  String descripcion;
  Reserva(
      {required this.imagen,
      required this.nombre,
      required this.descripcion,
      super.key});

  @override
  State<Reserva> createState() => _ReservaState();
}

class _ReservaState extends State<Reserva> {
  final _guitarra = TextEditingController();

  final _bajo = TextEditingController();

  final _bateria = TextEditingController();

  final _teclado = TextEditingController();

  final _microfono = TextEditingController();

  final _fecha = TextEditingController();

  final _hora = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('backg/madera.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverGrid(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(125, 199, 36, 158),
                                      blurRadius: 10,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                width: 300,
                                height: 150,
                                child: Image.asset(
                                  this.widget.imagen,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.all(20),
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(227, 46, 59, 66),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            this.widget.nombre,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: Text(
                                        this.widget.descripcion,
                                        //'Sala ambientada y diseñada exclusivamente para un ambito musical.\n\nCuenta con:\n\n-Aislamiento de ruido para que no se vean interrumpidos con el sonido externo y puedan practicar con la mayor de las comodidades\n\n-Parlantes de alta calidad con un excelente sonido.\n\n-Luces Led y ventilación para tener un ambiente mas fresco y comodo para ustedes.',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(228, 176, 190, 197),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        '___Instrumentos --->',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 80,
                                      child: Text(
                                        'Guitarra',
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
                                      width: 30,
                                      height: 20,
                                      child: TextField(
                                        controller: _guitarra,
                                        textAlign: TextAlign.end,
                                        decoration:
                                            InputDecoration(hintText: '0'),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 80,
                                      child: Text(
                                        'Bajo',
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
                                      width: 30,
                                      height: 20,
                                      child: TextField(
                                        controller: _bajo,
                                        textAlign: TextAlign.end,
                                        decoration:
                                            InputDecoration(hintText: '0'),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 80,
                                      child: Text(
                                        'Bateria',
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
                                      width: 30,
                                      height: 20,
                                      child: TextField(
                                        controller: _bateria,
                                        textAlign: TextAlign.end,
                                        decoration:
                                            InputDecoration(hintText: '0'),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 80,
                                      child: Text(
                                        'Teclado',
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
                                      width: 30,
                                      height: 20,
                                      child: TextField(
                                        controller: _teclado,
                                        textAlign: TextAlign.end,
                                        decoration:
                                            InputDecoration(hintText: '0'),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 80,
                                      child: Text(
                                        'Microfono',
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
                                      width: 30,
                                      height: 20,
                                      child: TextField(
                                        controller: _microfono,
                                        textAlign: TextAlign.end,
                                        decoration:
                                            InputDecoration(hintText: '0'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(228, 176, 190, 197),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        '¿Que dia deseas reservar?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 80,
                                      child: Text(
                                        'Fecha',
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
                                      width: 80,
                                      height: 20,
                                      child: TextField(
                                        controller: _fecha,
                                        textAlign: TextAlign.end,
                                        decoration:
                                            InputDecoration(hintText: ''),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 80,
                                      child: Text(
                                        'Hora',
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
                                      width: 80,
                                      height: 20,
                                      child: TextField(
                                        controller: _hora,
                                        textAlign: TextAlign.end,
                                        decoration:
                                            InputDecoration(hintText: ''),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 3000,
                    crossAxisSpacing: 1500,
                    mainAxisExtent: 1000,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pop(context);
            },
            label: Text(
              "Reservar",
              style: TextStyle(color: Colors.grey[400]),
            ),
            backgroundColor: Colors.black54,
            splashColor: Colors.red[900],
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
