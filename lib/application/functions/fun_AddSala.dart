import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_reserva.dart';
import 'package:valmusicstudios/infrastructure/entitymanager/esala.dart';

class AddSalas extends StatefulWidget {
  String nomsala;
  String imsala;
  String essala;
  String desSala;
  AddSalas({
    required this.nomsala,
    required this.imsala,
    required this.essala,
    required this.desSala,
    Key? key,
  }) : super(key: key);

  @override
  State<AddSalas> createState() => _AddSalasState();
}

class _AddSalasState extends State<AddSalas> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          height: 300,
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Reserva(
                    imagen: this.widget.imsala,
                    nombre: this.widget.nomsala,
                    descripcion: this.widget.desSala,
                  ),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  this.widget.imsala,
                  fit: BoxFit.cover,
                  height: 230,
                  width: 280,
                ),
                Text(
                  this.widget.nomsala,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  this.widget.essala,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
