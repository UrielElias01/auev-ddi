void main() {
  //intancia del objeto
  final Hero wolverine = new Hero(name: 'Wolverine', power: 'Garras');

  //impresion del objeto intanciado
  print(wolverine);

  //impresion de los paramtreos del objeto
  print(wolverine.name);
  print(wolverine.power);

  //TO DO: Generar otro superheroe sin poder y mostrar toda las información

  final Hero greenArrow = new Hero(name: 'greenArrow');
  print(greenArrow);
}

//deinificion de la clase Heroe
class Hero {
  //declaracion de las varibles
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});

  //constructor
  //inicializacion de las variables
  //Hero(this.name, this.power){

  //}

  //2da forma de Inicializacion de las variables
  //Hero (String pName, String pPower)
  //: name = pName,
  //power = pPower;

  //Sobreescritura del motodo toString para mostrar los parametros del objeto "name" y "power"
  @override
  String toString() {
    return '$name -$power';
  }
}
