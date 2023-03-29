/*Em dart,crie um programa que deverá armazenar os dados de 5 pessoas (nome,idade e salário). O programa criado deverá fazer a busca por registros onde as pessoas tenham a idade superior a idade de pesquisa e exibir para o usuário a quantidade de dados que foi encontrada e os dados (o nome e a idade) das pessoas que foram encontrados. Faça a montagem do programa utilizando as classes e suas propriedades.*/

import 'dart:io'; // Importe da biblioteca de entrada e saída dos dados.

class Pessoa {
  // Declaração da classe Pessoa.
  String nome = ""; // Variavel string nome.
  int idade = 0; // Variavel inteiro idade.
  double salario = 0; // Variavel double salario.
}

void main() {
  // Função execultavel.
  var listaPessoas = <Pessoa>[]; // Cria uma lista de pessoas

  for (var i = 0; i < 5; i++) {
    // Loop para armazenar os dados das 5 pessoas.
    var pessoa =
        Pessoa(); // Solicita os dados de uma pessoa e armazena, fazendo esse processo ate finalizar o loop, ou seja, 5 vezes.
    print('DADOS DA ${i + 1}º PESSOA');
    print('Digite o nome da pessoa :');
    pessoa.nome = stdin.readLineSync()!;

    print('Digite a idade de ${pessoa.nome} :');
    pessoa.idade = int.parse(stdin.readLineSync()!);

    print('Digite o salário de ${pessoa.nome}:');
    pessoa.salario = double.parse(stdin.readLineSync()!);
print('\n **************************************************');
    listaPessoas.add(pessoa); // Adiciona na lista.
  }

// Solicita o nome para a busca do mesmo.
  print('Digite a idade da pessoa que deseja buscar:');
  var buscarIdade = int.parse(stdin.readLineSync()!);
print('\n **************************************************');
  var encontrada = false; // Variável para indicar se a pessoa foi encontrada

  for (var pessoa in listaPessoas) {
    // Loop para percorrer a lista de pessoas.
    if (pessoa.idade > buscarIdade) {
      // Verifica se o nome da pessoa é igual ao nome buscado
      print(' ______________________');
      print('| Nome    : ${pessoa.nome}          |');
      print('| Idade   : ${pessoa.idade}          |');
      print('| Salário : ${pessoa.salario}        |');
      print(' ----------------------');
      encontrada = true; // Confirma a pessoa como encontrada.
    }
  }

  if (!encontrada) {
    // Informa se a pessoa não foi encontrada.
    print('Pessoa não encontrada');
  }
}
