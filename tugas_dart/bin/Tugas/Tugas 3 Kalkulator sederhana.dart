import 'dart:io';

void main() {
  print("=== Aplikasi Kalkulator Sederhana ===");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Pembagian");
  stdout.write("Pilih operasi (1/2/3): ");
  String? pilihan = stdin.readLineSync();

  if (pilihan == "1") {
    // Konfirmasi sebelum penjumlahan
    stdout.write("Anda memilih penjumlahan. Apakah ingin melanjutkan? (y/n): ");
    String? konfirmasi = stdin.readLineSync();

    if (konfirmasi?.toLowerCase() == "y") {
      penjumlahan();
    } else {
      print("Operasi penjumlahan dibatalkan.");
    }
  } else if (pilihan == "2") {
    pengurangan();
  } else if (pilihan == "3") {
    pembagian();
  } else {
    print("Pilihan tidak valid!");
  }
}

void penjumlahan() {
  stdout.write("Masukkan angka pertama: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka kedua: ");
  double b = double.parse(stdin.readLineSync()!);

  double hasil = a + b;
  print("Hasil penjumlahan: $hasil");
}

void pengurangan() {
  stdout.write("Masukkan angka pertama: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka kedua: ");
  double b = double.parse(stdin.readLineSync()!);

  double hasil = a - b;
  print("Hasil pengurangan: $hasil");
}

void pembagian() {
  stdout.write("Masukkan angka pertama: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka kedua: ");
  double b = double.parse(stdin.readLineSync()!);

  if (b != 0) {
    double hasil = a / b;
    print("Hasil pembagian: $hasil");
  } else {
    print("Error: Tidak bisa membagi dengan nol!");
  }
}