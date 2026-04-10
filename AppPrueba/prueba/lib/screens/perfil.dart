import 'package:flutter/material.dart';
import 'package:prueba/screens/variables.dart' as variablesGuardadas;

class Perfil extends StatelessWidget {
  final int usuarioIndex;
  Perfil({
    super.key,
    required this.usuarioIndex,
  });
  @override
  Widget build(BuildContext context) {
    List<String> misDatos = variablesGuardadas.misUsuarios[usuarioIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.circular(40), 
          ),
          child: Column(
            children: [
              const Center(
                child: Icon(Icons.account_circle, size:200, color:Colors.black),
              ),
              const SizedBox(height: 40),
              Text(
                "Nombre: ${misDatos[2]}",
                style: const TextStyle(color:Colors.black, fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                "Correo: ${misDatos[0]}",
                style: const TextStyle(color:Colors.black, fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                "Clave Secreta: ",
                style: const TextStyle(color:Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
