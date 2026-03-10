// List riwayat tersimpan di sini
final List<Map<String, dynamic>> riwayat = [];

void simpanRiwayat(
  double suhuAsal,
  String satuanAsal,
  double hasil,
  String satuanTujuan,
) {
  riwayat.add({
    'suhuAsal': suhuAsal,
    'satuanAsal': satuanAsal,
    'hasil': hasil,
    'satuanTujuan': satuanTujuan,
  });
}

void tampilkanRiwayat() {
  print('\n=== Riwayat Konversi ===');
  if (riwayat.isEmpty) {
    print('Belum ada riwayat konversi.');
    return;
  }

  // Pakai for-in loop + index manual biar keliatan nomor urutnya
  int nomor = 1;
  for (var data in riwayat) {
    print(
      '$nomor. ${data['suhuAsal']}°${data['satuanAsal']} '
      '= ${(data['hasil'] as double).toStringAsFixed(2)}°${data['satuanTujuan']}',
    );
    nomor++;
  }
}
