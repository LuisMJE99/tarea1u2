import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea_estados/controllers/usuario_controller.dart';
import 'package:tarea_estados/models/usuarios.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.find<UsuarioController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Estados '),
      ),
      body: Center(
        child: Column(children: [
          MaterialButton(
            color: Colors.blue,
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.cargarUsuario(Usuario(usuario: 'Luis', email: 'luis@gmail.com'));
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: Text('Cambiar email', style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.cambiarEmail('luisj@gmail.com');
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child:
                Text('Agregar juego', style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.agregarMateria(
                  'Juego #${usuarioCtrl.usuario.value.juegos.length + 1}');
            },
          ),
          /*MaterialButton(
            color: Colors.blue,
            child: Text('Cambiar Tema'),
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
          ),*/
        ]),
      ),
    );
  }
}