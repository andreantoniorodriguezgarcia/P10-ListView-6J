import 'package:flutter/material.dart';

void main() => runApp(const MilistaCard());

class MilistaCard extends StatelessWidget {
  const MilistaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi ListView Rodriguez",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/avatar1.png",
    "assets/images/avatar2.jpg",
    "assets/images/avatar3.png",
    "assets/images/avatar4.png",
    "assets/images/avatar5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Rodriguez"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: const Text("esto es un titulo"),
                subtitle: const Text("esto es un subtitulo"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
