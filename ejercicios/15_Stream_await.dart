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

//creacion del Stream asincrono
Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 3));

    //ceder un valor
    yield i;
  }
}
