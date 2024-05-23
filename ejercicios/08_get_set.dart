void main() {
  //intancia de la clase Square
  final mySquare = Square(side: 10);

  mySquare.side = -5;
  print('Area: ${mySquare.area}');
}

class Square {
  //declaracion de la variable
  double _side; //sido * side

  //Constructor
  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  //Método get
  double get area {
    return _side * _side;
  }

  //Método Set
  set side(double value) {
    if (value < 0) throw 'value must be >= 0';
    _side = value;
  }
}
