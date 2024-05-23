//TRY - CATCH
//try: intento de hacer la ejecucion

//se transforma el metodo main a asincrono
void main() async {
  print('Incio del programa');

  try {
    //espera a que se realice la peticion antes de imprimir el Fin del programa
    final value = await httpGet('http://');
    print(value);

    //yNo entra al catch al menos que se ponga Expection catch
  } on Exception catch (err) {
    print('Exception:  $err');
  }
  //atrapa el error
  catch (err) {
    print('Error general: $err');
  } finally {
    print('Entra al bloque finally');
  }

  //se imprime despues de que se recibe la peticion
  print('Fin del programa');
}

//Creacion del Future asincrono
Future<String> httpGet(String url) async {
  //creacion del metodo asincrono
  //espera de dos segundo para enviar la respuesta
  await Future.delayed(const Duration(seconds: 2));
  //return 'Respuesta de la peticion http';

  //creacion de un propio error
  throw Exception('No hay parametros en la URL');
  //throw 'Error en la peticion';
}
