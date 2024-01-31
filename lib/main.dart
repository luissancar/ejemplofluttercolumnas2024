import 'package:flutter/material.dart';

void main() => runApp(MiApp()); // llama al primer widget que se ejecutará

/*
void main() {
    runApp(MiApp);
}*/

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // es el estilo de la app
      title: "Primera App", // nombre de la app
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // estructura básica de una app
        // estructura de una app movil
        appBar: AppBar(
          title: Text("Primera App Title"),
        ),
        body: //Column(
            ListView(
          children: [
            /*
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.network(
                  "https://pics.filmaffinity.com/Nosferatu-488553893-large.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.network(
                  "https://pics.filmaffinity.com/Nosferatu-488553893-large.jpg"),
            ),*/

            item("https://pics.filmaffinity.com/Nosferatu-488553893-large.jpg"),
            item("https://www.makma.net/wp-content/uploads/2022/06/Nosferatu1.jpg"),
            item("https://pics.filmaffinity.com/Nosferatu-488553893-large.jpg"),
            item("https://www.makma.net/wp-content/uploads/2022/06/Nosferatu1.jpg"),
            item("https://pics.filmaffinity.com/Nosferatu-488553893-large.jpg"),
            item("https://pics.filmaffinity.com/Nosferatu-488553893-large.jpg"),
          ],
        ));
  }
}

Widget item(String url) {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: Image.network(url),
  );
}
