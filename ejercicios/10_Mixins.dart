//MIXINS
//agrega la accion para cada una de las clases, similar a las clases abstractas
//
void main() {
  //crear un objeto de la clase Delfin
  final delfin = Delfin();
  delfin.nadar();

  //crear un objeto de la clase Pato
  final pato = Pato();
  pato.caminar();
  pato.nadar();
  pato.volar();
}

//definicion de las clases abstractas
//CLASE PADRE
abstract class Animal {}

//CLASES HIJAS
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

//Clase tipo Mixin para agregar las acciones
mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

//definicion de las clases con su extend a su clase superior y sus acciones
//Propiedades de la clase padre y acciones de las clases mixins, ademas de acciones dentro de la clase que se están creando
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Volador, Nadador {}
