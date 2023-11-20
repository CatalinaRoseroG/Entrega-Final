import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'PerfilUsuario.dart';

void main() {
  runApp(MyApp());
}

class Animal {
  final String nombre;
  final String especie;
  final String raza;
  final int edad;
  final String genero;
  final String descripcion;

  Animal({
    required this.nombre,
    required this.especie,
    required this.raza,
    required this.edad,
    required this.genero,
    required this.descripcion,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaPrincipalPage(),
    );
  }
}

class PaginaPrincipalPage extends StatefulWidget {
  @override
  _PaginaPrincipalPageState createState() => _PaginaPrincipalPageState();
}

class _PaginaPrincipalPageState extends State<PaginaPrincipalPage> {
  List<Animal> animales = [];

  @override
  void initState() {
    super.initState();
    obtenerDatos();
  }

  Future<void> obtenerDatos() async {
    final response = await http.get(Uri.parse('http://192.168.137.104/cargarMascota.php'));
    
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      setState(() {
        animales = data.map((item) {
          return Animal(
            nombre: item['Nombre'],
            especie: item['Especie'],
            raza: item['Raza'],
            edad: item['Edad'],
            genero: item['Genero'],
            descripcion: item['Descripcion'],
          );
        }).toList();
      });
    } else {
      throw Exception('Fallo en la solicitud');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200], 
        title: Center(
          child: Icon(
            Icons.pets, 
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person), 
            color: Colors.black,
            onPressed: () {
              // Acción al presionar el icono de usuario
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> PerfilUsuarioPage()),
                  );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: animales.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(animales[index].nombre),
            subtitle: Text(animales[index].especie),
            // Muestra más detalles según sea necesario
          );
        },
      ),
    );
  }
}
