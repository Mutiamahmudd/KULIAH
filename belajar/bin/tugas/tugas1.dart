void main() {
  String nama = "Mutia";
  int jamKerja = 40;
  double upahPerJam = 50000;
  bool isTetap = true; 

  double gajiKotor = jamKerja * upahPerJam;

  double pajak;
  if (isTetap) {
    pajak = 0.10 * gajiKotor;
  } else {
    pajak = 0.05 * gajiKotor;
  } 

  double gajiBersih = gajiKotor - pajak;

  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp ${gajiKotor.toStringAsFixed(0)}");
  print("Pajak         : Rp ${pajak.toStringAsFixed(0)}");
  print("Gaji Bersih   : Rp ${gajiBersih.toStringAsFixed(0)}");
}