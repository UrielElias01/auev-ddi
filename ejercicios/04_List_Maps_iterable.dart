void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 6, 6, 6, 6, 7, 7, 8, 9, 10];

  print('Lista Original $numbers');
  print('Lenght: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Firts: ${numbers.first} ');
  print('Last: ${numbers.last}');
  //otro last con length
  print('Last: ${numbers[numbers.length - 1]}');
  print('Desc: ${numbers.reversed}');

  //convertido a iterable
  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');

  //convertir a lista
  print('List: ${reversedNumbers.toList()}');

  //convertir a set de datos, quita los duplicados
  print('Set: ${reversedNumbers.toSet()}');

  //WHERE
  //a la lista original se obtienen los numeros mayores a 5

  final numbersGreaterThan5 = numbers.where((int number) {
    return number > 5;
  });

  print('>5 ${numbersGreaterThan5}');

  print('>5 covert to set to list: ${numbersGreaterThan5.toSet().toList()}');
}
