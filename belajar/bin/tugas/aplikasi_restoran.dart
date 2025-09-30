import 'dart:io';

void main() {
  bool jalan = true;

  while (jalan) {
    print("=== RESTORAN IMOET ===");

    // Menu makanan
    print("Menu Makanan:");
    print("1. Bakso - 18000");
    print("2. Mie Ayam - 18000");
    print("3. Mie Ayam Bakso - 20000");

    stdout.write("Pilih makanan (1-3): ");
    int pilihMakanan = int.parse(stdin.readLineSync()!);
    String namaMakanan = "";
    int hargaMakanan = 0;

    if (pilihMakanan == 1) {
      namaMakanan = "Bakso";
      hargaMakanan = 18000;
    } else if (pilihMakanan == 2) {
      namaMakanan = "Mie Ayam";
      hargaMakanan = 18000;
    } else if (pilihMakanan == 3) {
      namaMakanan = "Mie Ayam Bakso";
      hargaMakanan = 20000;
    } else {
      print("Pilihan tidak ada!");
      continue;
    }

    // Menu minuman
    print("\nMenu Minuman:");
    print("1. Es Teh - 5000");
    print("2. Es Jeruk - 8000");
    print("3. Air Mineral - 5000");

    stdout.write("Pilih minuman (1-3): ");
    int pilihMinuman = int.parse(stdin.readLineSync()!);
    String namaMinuman = "";
    int hargaMinuman = 0;

    if (pilihMinuman == 1) {
      namaMinuman = "Es Teh";
      hargaMinuman = 5000;
    } else if (pilihMinuman == 2) {
      namaMinuman = "Es Jeruk";
      hargaMinuman = 8000;
    } else if (pilihMinuman == 3) {
      namaMinuman = "Air Mineral";
      hargaMinuman = 5000;
    } else {
      print("Pilihan tidak ada!");
      continue;
    }

    // Hitung total
    int total = hargaMakanan + hargaMinuman;
    print("\nPesanan Anda:");
    print("- $namaMakanan : Rp$hargaMakanan");
    print("- $namaMinuman : Rp$hargaMinuman");
    print("Total: Rp$total");

    // Pembayaran
    stdout.write("Masukkan uang pembayaran: Rp");
    int bayar = int.parse(stdin.readLineSync()!);

    if (bayar >= total) {
      int kembali = bayar - total;
      print("Pembayaran berhasil, kembalian Rp$kembali");
    } else {
      print("Uang tidak cukup, transaksi dibatalkan.");
    }

    // Lanjut atau keluar
    stdout.write("Mau pesan lagi? (y/n): ");
    String ulang = stdin.readLineSync()!;
    if (ulang.toLowerCase() != "y") {
      jalan = false;
      print("Terima kasih sudah datang ke restoran kami!");
    }
  }
}