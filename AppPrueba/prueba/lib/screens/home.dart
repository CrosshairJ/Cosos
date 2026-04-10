
import 'package:flutter/material.dart';
import 'package:prueba/screens/tareas.dart';
import 'package:prueba/screens/perfil.dart';
import 'package:prueba/screens/variables.dart' as variablesGuardadas;

class Home extends StatelessWidget {
  Home({
    super.key,
  });
  final List<String> dias=["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sabado", "Domingo"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dias Semanales'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, size: 40), 
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=>Perfil(usuarioIndex:0)) //aun no verifico el usuario le comparare el gmail ingresado luego para la verificacion completa
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: 
        ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: dias.length, 
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder:(context)=>Tareas(dia:index))
                    );
                  },
                  child: Text(dias[index]), 
                );
              },
            ),
    );
  }
}