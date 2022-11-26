import 'dart:io';
void main(){

  final products = [];

  var isRuning = true;

  while(isRuning){
    print('\x1B[2J\x1B[0;0H');
    print("LISTA DE COMPRAS (${products.length}) - comandos [add, print]");
    var input = stdin.readLineSync();

    if(input == 'add'){
      print('\x1B[2J\x1B[0;0H'); // Limpa o terminal
      print('Adicione um produto: ');
      var product = stdin.readLineSync();
      products.add(product);
    }else if(input == 'print'){
      print('\x1B[2J\x1B[0;0H');
      print('Todos os produtos cadastrados !!!');
      print('\n');
      for(var i = 0; i < products.length;i++){
      print(products[i]);
      }
      stdin.readLineSync();
    }else
      isRuning = false;
    print('\x1B[2J\x1B[0;0H');
    print('Fim do programa !!!');
  }

}