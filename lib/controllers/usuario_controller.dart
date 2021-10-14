import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea_estados/models/usuarios.dart';

class UsuarioController extends GetxController {
  //Observables
  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  //Metodo para crear usuario y cambiar el valor del observable
  void cargarUsuario(Usuario usuario) {
    this.existeUsuario.value = true;
    this.usuario.value = usuario;
  }

  void cambiarEmail(String email) {
    this.usuario.update((val) {
      val!.email = email;
    });
  }

  void agregarMateria(String juegos) {
    this.usuario.update((val) {
      //...sprep
      val!.juegos = [...val.juegos, juegos];
    });
  }
}