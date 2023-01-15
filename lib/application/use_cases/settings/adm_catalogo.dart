import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/functions/fun_AddSala.dart';
import 'package:valmusicstudios/application/use_cases/settings/man_admin.dart';
import 'package:valmusicstudios/application/use_cases/settings/man_sala.dart';
import 'package:valmusicstudios/domain/entities/sala.dart';

class CatAdmin extends StatefulWidget {
  const CatAdmin({super.key});

  @override
  State<CatAdmin> createState() => _CatAdminState();
}

class _CatAdminState extends State<CatAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegAdmin(),
                    ),
                  );
                },
                child: Text(
                  "Añadir Administrador",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => manSala(),
                    ),
                  );
                },
                child: Text(
                  "Añadir Salas",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'ValMusic - Administración',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
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
                    child: Nueva_Sala(),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    // children: [
                    //   AddSalas(
                    //     nomsala: 'Sala 1',
                    //     imsala: 'sala/sala1.png',
                    //     essala: 'Disponible',

                    //   ),
                    //   AddSalas(
                    //     nomsala: 'Sala 2',
                    //     imsala: 'sala/sala1.png',
                    //     essala: 'Reservada',
                    //   ),
                    // ],
                    // ),
                  ),
                ]),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 3000,
                  crossAxisSpacing: 1500,
                  mainAxisExtent: 1500,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
