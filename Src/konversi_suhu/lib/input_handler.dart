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

// Fungsi untuk mendapatkan pilihan satuan
String getInputSatuan(String prompt) {
  const List<String> satuanValid = ['C', 'F', 'K', 'R'];

  while (true) {
    stdout.write(prompt);
    final String? input = stdin.readLineSync();
    final String satuan = (input ?? '').toUpperCase().trim();

    if (satuanValid.contains(satuan)) {
      return satuan;
    }
    print('Satuan tidak valid! Pilih salah satu: C, F, K, R');
  }
}