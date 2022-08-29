// Descrição:
// - Implemente uma função que receba um número inteiro positivo e retorne o
// somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao
// número passado.
import 'dart:io';

void main(List<String> args) {
  int numeroDoUsuario = 0;

  print('Digite um número inteiro:');
  numeroDoUsuario = int.parse(stdin.readLineSync().toString());

  print('\nVocê digitou: $numeroDoUsuario');

  if (numeroDoUsuario > 0) {
    somaNumerosDivisiveis(numeroInteiro: numeroDoUsuario);
  } else {
    print('\nNúmero inválido\n');
  }
}

somaNumerosDivisiveis({int numeroInteiro = 0}) {
  List<int> listaDeAntecessoresDivisiveis = [];
  int resultadoFinal = 0;
  for (var i = 1; i < numeroInteiro; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      listaDeAntecessoresDivisiveis.add(i);

      resultadoFinal = listaDeAntecessoresDivisiveis
          .reduce((value, element) => value + element);
    }
  }
  print(
      '\nOs antecessores são: $listaDeAntecessoresDivisiveis e a soma deles é: $resultadoFinal\n');
}

//Resumo do lógica:

//Recebe o número do usuário
//Percorre o número recebido e verifica se a condição é verdadeira 
//Adiciona os antecessores divisíveis dentro da lista e soma os valores através do reduce