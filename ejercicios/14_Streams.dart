//Streams
//son flujos de informacion que pueden estar emitiendo valores periodicamente
//pueden ser una vez o nunca, pero siempre hay informacion

//son como el flujo de agua (el flujo es el stream)
//puede cerrarse y abrirse

void main() {
  //emit cerrado
  //emitNumbers();

  //suscipcion al Stream con listen
  emitNumbers().listen((value) {
    print('Emit: $value');
  });
}

//creacion del Stream
Stream<int> emitNumbers() {
  //cada un segundo retorna un valor
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
    //se utiliza el take para recibir solo la cantidad de valores indicados, limita la cantida de respuestas
  }).take(5);
}
