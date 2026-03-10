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