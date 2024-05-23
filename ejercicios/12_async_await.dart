//Metodo ASINCRONO

//se transforma el metodo main a asincrono
void main() async {
  print('Incio del programa');

  //espera a que se realice la peticion antes de imprimir el Fin del programa
  final value = await httpGet('http://');
  print(value);

  //se imprime despues de que se recibe la peticion
  print('Fin del programa');
}

//Creacion del Future asincrono
Future<String> httpGet(String url) async {
  //creacion del metodo asincrono
  //espera de dos segundo para enviar la respuesta
  await Future.delayed(const Duration(seconds: 2));
  return 'Respuesta de la peticion http';
}
