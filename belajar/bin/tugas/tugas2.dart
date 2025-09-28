import 'dart:io';

void main(List<String> args){
  stdout.write("Masukkan nilai: ");
  String? input = stdin.readLineSync();
  int nilai = int.parse(input!);

  if (nilai >= 85 && nilai <= 100){
    print("Skor Anda : $nilai");
    print("Grade Anda: A");
  } else if (nilai >= 70 && nilai <= 84){
    print("Skor Anda : $nilai");
    print("Grade Anda: B");
  } else if (nilai >= 60 && nilai <= 69){
    print("Skor Anda : $nilai");
    print("Grade Anda: C");
  } else if (nilai >= 50 && nilai <= 59){
    print("Skor Anda : $nilai");
    print("Grade Anda: D");
  } else if (nilai < 50){
    print("Skor Anda : $nilai");
    print("Grade Anda: E");
  }
  else {
    print("Nilai tidak tersedia");
  }

}