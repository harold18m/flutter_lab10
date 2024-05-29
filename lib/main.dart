import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventos Deportivos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventosPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EventosPage extends StatelessWidget {
  final List<Evento> eventos = [
    Evento(
      titulo: 'Partido de fútbol',
      fecha: '10 de octubre',
      lugar: 'Estadio Nacional',
    ),
    Evento(
      titulo: 'Carrera de autos',
      fecha: '15 de octubre',
      lugar: 'Autódromo Internacional',
    ),
    Evento(
      titulo: 'Torneo de tenis',
      fecha: '20 de octubre',
      lugar: 'Club de Tenis',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos Deportivos'),
      ),
      body: ListView.builder(
        itemCount: eventos.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(eventos[index].titulo),
              subtitle: Text('Fecha: ${eventos[index].fecha}'),
              trailing: Text('Lugar: ${eventos[index].lugar}'),
            ),
          );
        },
      ),
    );
  }
}

class Evento {
  final String titulo;
  final String fecha;
  final String lugar;

  Evento({required this.titulo, required this.fecha, required this.lugar});
}