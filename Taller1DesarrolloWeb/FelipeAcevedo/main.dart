import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int contador = 0;
  Color fondoColor = Colors.black;
  int numeroAleatorio=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taller 1: '),
        backgroundColor: Colors.blue[900],
        
      ),
      body: Center(
        child: Column(
          children: [
            Text('Contador : $contador ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
              ),

            ),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: () {
              setState(() {
                contador=contador+1;
              });            
            }, child: const Text("Sumar 1"),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                if(contador>0){
                  contador=contador-1;
                }
              });
              
            }
            , child: const Text("Restar 1"),
            ),

            Text('Ejercicio 2: ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
              ),

            ),
            Text('Cambia color fondo',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
              ),

            ),

            ElevatedButton(onPressed: () {
              setState(() {
                fondoColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
              });
              
            }
            , child: const Text("Cambiar Color fondo"),
            ),
            
            Text('Ejercicio 3:Numero aleatorio',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
              ),

            ),

            ElevatedButton(onPressed: () {
              setState(() {
                numeroAleatorio = Random().nextInt(100);
              });
              
            }
            , child: const Text("Cambiar numero"),
            ),
            Text('$numeroAleatorio',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
              ),

            ),
          ],
        ),          
      ),
      backgroundColor:fondoColor,
      //floatingActionButton: FloatingActionButton(onPressed: onPressed),
    );
  }
}



