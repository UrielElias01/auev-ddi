//clases abstractas
//moldes, no se puede instanciar la clase abstracta como si misma
//es un molde para crear otro molde
//se pueden crear funciones sin implementacion
void main() {
  //instancia de las clases con valores en los parametros
  final plantaViento = PlantaViento(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 9);

  print('Viento ${cargarBateria(plantaViento)}');
  print('Nuclear ${cargarBateria(plantaNuclear)}');
}

//=================================================================================
//FUNCION PARA USAR LAS CLASES

double cargarBateria(PlantaEnergia planta) {
  //cuando llega a un limite de 10 se detiene y indica que no hay suficiente energia
  if (planta.cantidadEnergia < 10) {
    throw Exception('sin Energia suficiente');
  }

  //reducir la cantidad de energia cada que se llama
  return planta.cantidadEnergia - 10;
}

//=================================================================================
//CLASE PADRE
//declaracion de un enum para almacenar más tipos de valores
enum TipoPlanta { viento, agua, nuclear }

//palabra reservada abstract para clases de este tipo
abstract class PlantaEnergia {
  //declaracion de variables
  double cantidadEnergia;
  final TipoPlanta tipo; //recibe los tipos de valores del enum

  //constructos
  PlantaEnergia({required this.cantidadEnergia, required this.tipo});

  //se sobreescribe en la clase que se vaya a utilizar de forma obligatoria
  void consumirEnergia(double cantidad);
}

//extends or implments
//extends, extiende o hereda de una clase padre
//implements, sobreescribe lo que ya se tiene, se crea una copia de la clase padre y se implementa en la que se generó

//=================================================================================
//EXTENDS
//Utilizacion del extends de la clase padre
class PlantaViento extends PlantaEnergia {
  //constructor
  PlantaViento({required double energiaInicial})
      //hace referencia al contructor de la clase padre, en tipo se utiliza el enum
      : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);

  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}

//=================================================================================
//IMPLEMENTS
//Utilizacion del implements

class PlantaNuclear implements PlantaEnergia {
  //se sobreescriben las variables de la clase padre
  @override
  double cantidadEnergia;

  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;

  //comstructor
  PlantaNuclear({required double this.cantidadEnergia});

  //volver a sobreescribir el metodo consumirEnergia para reducir la cantida de energia
  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}
