void main() {
  //declaracion/asignacion de variables
  final String game = 'Zelda';
  final int starts = 4;
  final bool isRPG = false;
  //inicializar listas de Strings con list y con tipo
  final List<String> types = ['Adventure', 'RPG'];
  final cover = <String>['Zelda/front.png', 'Zelda/back.png'];

  //Elemento dinamico  asignacion de ciertos valores y listas de valores
  dynamic data = null;
  data = true;
  data = [1, 2, 3, 4, 5];
  data = {1, 2, 3, 4, 5};
  data = 1;
  data = 'Hola';
  //data +=2;
  //callback
  data = () => true;
  //data = null;

  //Impresion multiple en bloque
  print("""
    $game
    $starts
    $isRPG
    $types
    $cover
    $data
  """);
}
