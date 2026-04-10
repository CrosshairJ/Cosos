
import 'package:flutter/material.dart';
import 'package:prueba/screens/variables.dart' as variablesGuardadas;

class Tareas extends StatelessWidget {
  final int dia;
  const Tareas({
    super.key,
    required this.dia,
  });

  @override
  Widget build(BuildContext context) {

    List<String> listaDia = variablesGuardadas.misTareas[dia];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tareas'),
      ),
      backgroundColor: Colors.black,
      body:   
            ListView.builder(
              itemCount: listaDia.length~/2, 
              itemBuilder: (context, index) {
                int i=index*2;
                return ListTile(
                  title: Text(
                    listaDia[i],
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    listaDia[i+1], 
                    style: const TextStyle(color: Colors.grey),
                  ),
                  leading: const Icon(Icons.access_alarm, color: Colors.blue),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                  onTap: () {
                    //aca editare para modificar o agregar cosas
                  },
                );
              },
            ),
    );
  }
}