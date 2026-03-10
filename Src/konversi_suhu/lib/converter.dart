// Langkah 1: Konversi suhu yang diinput (apapun satuannya) ke Celsius dulu (jembatan)
double keCelsius(double suhu, String satuan) {
  switch (satuan) {
    case 'C':
      return suhu;
    case 'F':
      return (suhu - 32) * 5 / 9;
    case 'K':
      return suhu - 273.15;
    case 'R':
      return suhu * 5 / 4;
    default:
      return suhu;
  }
}

// Langkah 2: Konversi dari Celsius ke satuan tujuan
double dariCelsius(double celsius, String satuanTujuan) {
  switch (satuanTujuan) {
    case 'C':
      return celsius;
    case 'F':
      return (celsius * 9 / 5) + 32;
    case 'K':
      return celsius + 273.15;
    case 'R':
      return celsius * 4 / 5;
    default:
      return celsius;
  }
}

// Fungsi utama konversi: gabungin dua langkah di atas
double konversiSuhu(double suhu, String satuanAsal, String satuanTujuan) {
  final double celsius = keCelsius(suhu, satuanAsal);
  return dariCelsius(celsius, satuanTujuan);
}