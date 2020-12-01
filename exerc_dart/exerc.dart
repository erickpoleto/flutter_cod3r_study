main() {
  //fortemente tipado
  int a = 4;
  double e = 20;
  const c = 'arroz';
  bool isTrue = true;
  String d = 'feijao';
  print(c +" "+ d);
  print(isTrue);
  //listas de objetos com chaves e valores
  var list = [{'name': 'erick'}];
  list.add({'name': 'jhonny'});
  print(list);
  print(list.length);
  print(list.elementAt(0));
  print(list[1]);

  //Set, conjunto de dados unicos
  Set<int> conj = {0, 1, 2, 3, 4, 4, 4};
  print(conj.length);
  print(conj is Set);
  print(conj.fold(0, (previousValue, element) => element));

  //tipo dinamico
  dynamic x = 'Teste';
  x = 123;
  x = false;

  //mapeamento, Map do tipo string e double
  Map<String, double> studentsResult = {
    'erick': 99.2,
    'don': 10.2,
    'al': 15.2
  };
  //percorrendo set de valores
  for(var key in studentsResult.keys) {
    print('chave = $key');

  }

  for(var value in studentsResult.values) {
    print('value = $value');
  }

  for(var entrie in studentsResult.entries) {
    print('${entrie.key} = ${entrie.value}');
  }

  //imutaveis, diferenca entre tempo de compilação
  //runtime
  final b = 3;
  //compilação
  const q = 5;


}