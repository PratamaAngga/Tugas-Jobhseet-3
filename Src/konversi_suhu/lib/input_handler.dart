import 'dart:io';

// Fungsi untuk mendapatkan input suhu (angka)
double getInputSuhu(String prompt) {
  while (true) {
    stdout.write(prompt);
    final String? input = stdin.readLineSync();
    final double? value = double.tryParse(input ?? '');

    if (value != null) {
      return value;
    }
    print('Input tidak valid! Masukkan angka yang benar.');
  }
}