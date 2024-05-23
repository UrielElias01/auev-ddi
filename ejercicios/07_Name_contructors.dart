void main() {
  //Declaracion de una Map en la variable rawJson
  final Map<String, dynamic> rawJson = {
    'name': 'SpiderMan',
    'power': 'Araña',
    'isAlive': true
  };

  //Intancia de la clase
  final spiderman = Hero.fromJson(rawJson);

  final other = Hero(name: 'Yo', power: 'Speed', isAlive: true);

  //impresion de los objetos
  print(other);
  print(spiderman);
}

//creacion de la clase Hero e declaracion de variables
class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  //Creacion del contructor
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'no name found',
        power = json['power'] ?? 'no power found',
        isAlive = json['isAlive'] ?? 'no isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive ${isAlive ? 'Yes' : 'No'}';
  }
}
