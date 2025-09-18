import 'dart:io';


int perkalian(int x, int y) {
  int result = x * y;
  return result;
}

void main() {
 
  stdout.write("Masukkan angka pertama: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  int b = int.parse(stdin.readLineSync()!);

 
  int hasil = perkalian(a, b);


  print("Hasil perkalian $a * $b = $hasil");
}