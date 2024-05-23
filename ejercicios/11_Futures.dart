//Futures
// Son un acuerdo de que en el futuro tendrás un vaolr para ser usados

void main() {
  print('Incio del programa');

  httpGet('http//').then((value) {
    print(value);
  });

  print('Fin del programa');
}

//Creacion del Future
Future<String> httpGet(String url) {
  //Espera de dos segundo para enviar la respuesta
  return Future.delayed(const Duration(seconds: 2), () {
    return 'Respuesta de la peticion http';
  });
}
