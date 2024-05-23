void main() {
  //imprimir la funcion
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(5, 6));
  print(addTwoNumebers(5, 6));

  //se puede poner uno o dos numeros pues b es opcional
  print(agregarDosNunmerosOpcional(4));
  print(agregarDosNunmerosOpcional2(2));

  //Asignacion de valores a ambas variables
  print(greetsPerson(mensaje: 'Hola', name: 'Uri'));

  //asignando solo la variable requerida
  print(greetsPerson(name: 'Uri'));
}

//funciones
String saludar() {
  return "Hola a todos";
}

//metodos lambda
//simplificar la sintaxis de una funcion
String greetEveryone() => "Hello Everyone";

//funcion suma
int agregarNumeros(int a, int b) {
  return a + b;
}

//==============================================================================
//TO DO:
//convertir funcion suma a metodo lambda se debe llamar "addTwoNumbers"
int addTwoNumebers(int a, int b) => a + b;

//==============================================================================
//variables opcionales
//La variable b es opcional y a es requerido de forma obligatoria
int agregarDosNunmerosOpcional(int a, [int b = 0]) {
  return a + b;
}

//con el signo de interrogacion, b puede recibir un valor nulo
int agregarDosNunmerosOpcional2(int a, [int? b]) {
  //indica que si b es nulo agrega un 0
  //operador termianrio
  //b = b ?? 0;
  b ??= 0;
  return a + b;
}

//===============================================================================
//variables por referencia

//Indica que una variable es requerida, la otra puede recibir un nulo y en su lugar asigna la palabra "Hola"
String greetsPerson({required String name, String? mensaje = 'hola'}) {
  return '$mensaje, $name';
}
