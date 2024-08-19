void main() {
  // 1. Operator: Aritmatika dan Perbandingan
  int anggota = 45;
  int latihanHariIni = 35;
  int totalLatihan = anggota + latihanHariIni; // Penjumlahan
  bool latihanCukup = totalLatihan >= 60; // Perbandingan
  print('Total latihan anggota dan tambahan hari ini: $totalLatihan, Cukup? $latihanCukup');
  
  // 2. List: Daftar nama anggota Paskibra3
  List<String> paskibra = ['Eskel', 'icha', 'Nabil'];
  paskibra.add('farel'); // Menambah anggota baru
  print('Anggota Paskibra: $paskibra');

  // 3. Set: Set* untuk posisi barisan
  Set<String> posisiBarisan = {'Pasukan 17', 'Pasukan 8', 'Pasukan 45'};
  posisiBarisan.add('Danton'); // Menambah posisi baru
  print('Posisi dalam barisan: $posisiBarisan');
  
  // 4. Map: Map untuk mencatat nilai tiap anggotaw
  Map<String, int> nilaiLatihan = {
    'eskel': 95,
    'nabil': 90,
    'icha': 89,
  };
  nilaiLatihan['farel'] = 90; // Menambah nilai anggota baru
  print('Nilai latihan anggota: $nilaiLatihan');
  
  // 5. Simbol: Simbol untuk peran penting
  Symbol komandan = #Danton;
  print('Simbol peran: $komandan');
  
  // 6. Percabangan: Memeriksa kelayakan barisan
  if (totalLatihan > 50) {
    print('Barisan siap untuk upacara!');
  } else if (totalLatihan == 50) {
    print('Barisan hampir siap.');
  } else {
    print('Barisan butuh lebih banyak latihan.');
  }
  
  // 7. Perulangan: Menampilkan nama-nama anggota Paskibra
  for (var anggota in paskibra) {
    print('Anggota: $anggota');
  }

  // 8. Fungsi dengan parameter opsional: Menampilkan hasil latihan
  void tampilkanNilai(String nama, {int nilai = 0}) {
    print('Nilai latihan $nama: $nilai');
  }
  tampilkanNilai('eskel', nilai: 95);
  tampilkanNilai('nabil', nilai: 50);
  
  // 9. Inner Function: Fungsi untuk mengelola latihan
  void kelolaLatihan() {
    void pengingatLatihan() {
      print('semangat untuk latihan tujuh belas agustus');
    }
    pengingatLatihan(); // Memanggil inner function
  }
  kelolaLatihan();
  
  // 10. Fungsi dengan nilai balik: Menghitung total kehadiran
  int hitungKehadiran(int hadir, int absen) {
    return hadir - absen;
  }
  int kehadiranTotal = hitungKehadiran(50, 5);
  print('Total kehadiran: $kehadiranTotal');
  
  // 11. Fungsi singkat: Menghitung sisa latihan
  int sisaLatihan(int total, int sudahLatihan) => total - sudahLatihan;
  int latihanTersisa = sisaLatihan(10, 4);
  print('Latihan tersisa: $latihanTersisa');
  
  // 12. Fungsi anonim & scope: Mengalikan nilai latihan untuk evaluasi
  List<int> nilaiAnggota = [85, 90, 88, 92];
  var nilaiEvaluasi = nilaiAnggota.map((nilai) {
    return nilai * 2;
  }).toList();
  print('Nilai evaluasi: $nilaiEvaluasi');
  
  // 13. Closure: Fungsi untuk menambah skor latihan
  Function buatPenambahSkor(int tambahan) {
    return (int skor) {
      return skor + tambahan;
    };
  }
  var tambahBonus = buatPenambahSkor(10); // Closure menambah bonus 10 poin
  print('Nilai setelah bonus: ${tambahBonus(85)}');
}