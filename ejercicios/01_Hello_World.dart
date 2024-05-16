void main() {
  //asignacion de un valor a una variable string
  String name = 'Uri';

  //asignacion de variable tardia
  late final int version;

  //solo se ejecuta en tiempo de compilacion, constante
  const String myName = 'Uriel';

  version = 12;

  //impresion de una variable
  print("Hola $name");

  //procesos dentro de un dato con ${}
  print("Hola ${name.toUpperCase()}");

  //proceso numerico
  print("${1 + 1}");

  //impresion de la variable tardia final
  print("No. de Version: ${version}");

  //impresion de constante
  print("Constantes: $myName");
}
