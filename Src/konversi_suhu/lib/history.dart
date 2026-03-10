// List riwayat tersimpan di sini
final List<Map<String, dynamic>> riwayat = [];

void simpanRiwayat(
    double suhuAsal, String satuanAsal, double hasil, String satuanTujuan) {
  riwayat.add({
    'suhuAsal': suhuAsal,
    'satuanAsal': satuanAsal,
    'hasil': hasil,
    'satuanTujuan': satuanTujuan,
  });
}