import 'package:konversi_suhu/input_handler.dart' as input_handler;
import 'package:konversi_suhu/converter.dart' as converter;
import 'package:konversi_suhu/history.dart' as history;

void main() {
  print('=== Konverter Suhu Berantai ===');

  double? suhuSekarang;
  String? satuanSekarang;
  bool running = true;

  while (running) {
    // Kalau belum ada suhu aktif, minta input baru
    if (suhuSekarang == null) {
      suhuSekarang = input_handler.getInputSuhu('Masukkan suhu: ');
      satuanSekarang = input_handler.getInputSatuan('Pilih satuan asal (C/F/K/R): ');
    }

    final String satuanTujuan =
        input_handler.getInputSatuan('Pilih satuan tujuan (C/F/K/R): ');

    // Konversi
    final double hasil =
        converter.konversiSuhu(suhuSekarang, satuanSekarang!, satuanTujuan);

    print('\nHasil: $suhuSekarang°$satuanSekarang = '
        '${hasil.toStringAsFixed(2)}°$satuanTujuan');

    // Simpan ke riwayat
    history.simpanRiwayat(suhuSekarang, satuanSekarang, hasil, satuanTujuan);

    // Tampilkan menu pilihan
    final String pilihan = input_handler.getInputMenu();

    switch (pilihan) {
      case '1':
        // Pakai hasil sebagai input berikutnya
        suhuSekarang = hasil;
        satuanSekarang = satuanTujuan;
        print('Melanjutkan dari ${hasil.toStringAsFixed(2)}°$satuanTujuan...');
        break;
      case '2':
        // Reset, minta input baru
        suhuSekarang = null;
        satuanSekarang = null;
        break;
      case '3':
        history.tampilkanRiwayat();
        break;
      case '4':
        history.tampilkanRiwayat();
        print('\nTerima kasih sudah menggunakan Konverter Suhu!');
        running = false;
        break;
    }
  }
}