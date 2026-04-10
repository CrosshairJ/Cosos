import 'package:flutter/material.dart';
import 'package:prueba/main.dart';
import 'package:prueba/screens/home.dart';
import 'package:prueba/screens/variables.dart' as variablesGuardadas;
class Registro extends StatelessWidget {
  Registro({
    super.key,
  });
  final TextEditingController correo= TextEditingController();
  final TextEditingController nombre= TextEditingController();
  final TextEditingController clave= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: 
            Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(30.0),  
            height: MediaQuery.of(context).size.height / 3,      
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40), 
            ),
            child :Column(          
              children: 
                [
                TextField(
                  keyboardType: TextInputType.name, 
                  controller: nombre,
                  decoration: InputDecoration(
                    labelText: "Nombre",
                    prefixIcon: Icon(Icons.person_outline), 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
                const Spacer(),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: correo,
                  decoration: InputDecoration(
                    labelText: "Correo",
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
                const Spacer(),
                TextField(
                obscureText: true, 
                controller: clave,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),               
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  String correoIngresado = correo.text;
                  String claveIngresada = clave.text;
                  bool verificar = false;
                  for (var persona in variablesGuardadas.misUsuarios){
                    if (persona[0]==correoIngresado ){
                      verificar=true;
                      break;
                    } 
                  }
                  if (verificar==true){
                    verificar=false;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Datos incorrectos"),
                        backgroundColor: Colors.red,
                      ),
                    );
                    
                  }else {
                    if(correoIngresado!="" && claveIngresada!=""){
                        verificar=false;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()), 
                          );
                    }
                  }
                },child: Text("Registrarse"),),
                SizedBox(height: 20,),
                ]
            ),  
          ),  
      ),
    );
  }
}