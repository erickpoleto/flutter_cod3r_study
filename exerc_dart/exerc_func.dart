//funcao que recebe uma funcao e retorna a mesma

double exec(double a, double b, double Function(double, double) fn) {
  return fn(a, b);
}

class Produto {
  String nome;
  double preco;
  //nao verboso
  //Produto(this.nome, this.preco);
  //nao alterar posicao
  Produto({this.nome, this.preco = 9.99});
  //verboso
  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }
  getNome() {
    return this.nome;
  }
  getPreco() {
    return this.preco;
  }
}

main() {
  //arrow não possui corpo envolvido por chaves, seria um Set
  final result = exec(1.20, 5.45, (a, b) => a + b);
  print('o resultado é ${result}');
  //new nao é necessario
  // Produto prod = Produto('shampoo', 510.50);
  // Produto prod1 = new Produto('sabonete', 50);
  //trocando a posicao quando é posicional
  Produto prod2 = Produto(preco: 500, nome: 'ewrick');

  // print("O produto ${prod.getNome()} custa ${prod.getPreco()}");
  // print("O produto ${prod1.getNome()} custa ${prod1.getPreco()}");
  print("O produto ${prod2.getNome()} custa ${prod2.getPreco()}");
}