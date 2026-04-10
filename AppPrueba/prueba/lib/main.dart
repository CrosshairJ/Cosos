import 'package:flutter/material.dart';
import "package:prueba/screens/login.dart";
import "package:prueba/screens/registro.dart";
import 'package:prueba/screens/cambiarclave.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Bienvenida(),
    );
  }
}

class Bienvenida extends StatelessWidget {
  const Bienvenida({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(30.0),  
          height: MediaQuery.of(context).size.height / 4,      
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40), 
          ),
          child :Column(          
            children: 
              [
              Text(
                "U-Track",
                style: TextStyle(
                  fontSize: 70, 
                  fontWeight: FontWeight.w900,    
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Row(
                children: 
                [ 
                  Expanded(child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()), 
                    );
                  },child: Text("Iniciar Sesion"),),),
                  SizedBox(width: 16,),
                  Expanded(child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registro()), 
                    );
                  },child:  Text("Registrarse"),),),
                                     
                ],
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Clave()), 
                    );
                },
                child: const Text(
                  "Olvide la contraseña",
                  style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.w500,    
                    color: Colors.black,
                  ),
                ),
              ),
              ]
          ),  
        ),
      ),
    );
  }
}
