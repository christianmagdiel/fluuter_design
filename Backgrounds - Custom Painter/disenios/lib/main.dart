import 'package:flutter/material.dart';
import 'package:disenios/src/retos/cuadrado_animado_page.dart';
// import 'package:disenios/src/pages/animaciones_page.dart';
// import 'package:disenios/src/pages/headers_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CuadradoAnimadoPage()
    );
  }
}