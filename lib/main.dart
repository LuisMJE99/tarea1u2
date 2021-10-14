import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea_estados/pages/pagina1.dart';
import 'package:tarea_estados/pages/pagina2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Games Videos',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (_) => Pagina1(),
        'pagina2': (_) => Pagina2()
      },
   
    );
  }
}