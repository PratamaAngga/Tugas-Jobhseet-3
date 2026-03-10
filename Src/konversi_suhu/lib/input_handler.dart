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

// Fungsi untuk mendapatkan pilihan menu
String getInputMenu() {
  const List<String> pilihanValid = ['1', '2', '3', '4'];

  while (true) {
    print('\nApa yang ingin kamu lakukan?');
    print('1. Pakai hasil ini untuk konversi berikutnya');
    print('2. Input suhu baru');
    print('3. Lihat riwayat');
    print('4. Keluar');
    stdout.write('Pilihan: ');

    final String? input = stdin.readLineSync();
    final String pilihan = (input ?? '').trim();

    if (pilihanValid.contains(pilihan)) {
      return pilihan;
    }
    print('Pilihan tidak valid! Masukkan angka 1-4.');
  }
}