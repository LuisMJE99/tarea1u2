class Usuario {
  //? El atributo es opcional
  String? usuario;
  String? email;
  //Las materias son obligatorias
  List<String> juegos;

  //Las materias las inicializamos con una lista vacia
  Usuario({this.usuario, this.email, this.juegos = const []});
}
