import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App ListView Hernandez",
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  List<String> images = [
    "assets/images/zapa.jpg",
    "assets/images/zapa2.jpg",
    "assets/images/zapa33.jpg",
    "assets/images/zapa44.jpg",
    "assets/images/zapa10.jpg",
    "assets/images/zapa7.png",
    "assets/images/zapa55.jpg",
    "assets/images/zapa8.png",
    "assets/images/zapa66.jpg",
    "assets/images/zapa9.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Iker Hernández"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("This is title"),
              subtitle: Text("This is subtitle"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
