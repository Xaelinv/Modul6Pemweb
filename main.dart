// Import package Flutter bawaan untuk membangun UI Material Design
import 'package:flutter/material.dart';

// Fungsi utama yang menjalankan aplikasi
void main() {
  runApp(const MyApp()); // Menjalankan widget MyApp sebagai root aplikasi
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Pegawai Bakery', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ), // Tema utama aplikasi (warna pink)
      home:
          const BakeryStaffPage(), // Menampilkan halaman utama BakeryStaffPage
    );
  }
}

// Widget statis untuk halaman daftar pegawai bakery
class BakeryStaffPage extends StatelessWidget {
  const BakeryStaffPage({super.key}); 

  // Daftar data pegawai bakery, terdiri dari nama dan pekerjaan
  final List<Map<String, String>> pegawaiBakery = const [
    {"nama": "Arlin", "pekerjaan": "Pembuat Roti"},
    {"nama": "Adela", "pekerjaan": "Kasir"},
    {"nama": "Yoga", "pekerjaan": "Pengantar Pesanan"},
    {"nama": "Karina", "pekerjaan": "Dekorasi Kue"},
    {"nama": "Monic", "pekerjaan": "Barista"},
    {"nama": "Kaluna", "pekerjaan": "Manajer Toko"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Pegawai Bakery'),
      ), // Judul di bagian atas
      body: ListView.builder(
        itemCount:
            pegawaiBakery.length, // Jumlah item berdasarkan jumlah data pegawai
        itemBuilder: (context, index) {
          final nama = pegawaiBakery[index]['nama']!; // Mengambil nama pegawai
          final pekerjaan =
              pegawaiBakery[index]['pekerjaan']!; // Mengambil pekerjaan
          final inisial = getInisial(nama); // Mendapatkan inisial dari nama

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink, // Warna latar avatar
              child: Text(
                inisial,
                style: const TextStyle(color: Colors.white),
              ), // Teks inisial
            ),
            title: Text(
              nama,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ), // Nama pegawai dengan huruf tebal
            ),
            subtitle: Text(pekerjaan), // Pekerjaan pegawai sebagai subtitle
          );
        },
      ),
    );
  }

  // Fungsi untuk mengambil inisial dari nama (2 huruf pertama atau dari dua kata)
  String getInisial(String nama) {
    List<String> kata = nama.split(" ");
    if (kata.length >= 2) {
      return kata[0][0].toUpperCase() + kata[1][0].toUpperCase();
    } else {
      return nama.substring(0, 2).toUpperCase();
    }
  }
}
