// Import package Flutter Material Design
import 'package:flutter/material.dart';

// Fungsi utama yang menjalankan aplikasi
void main() {
  runApp(const MyApp()); // Menjalankan widget utama MyApp
}

// Widget utama dari aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Golden Retriever Info', // Judul aplikasi
      debugShowCheckedModeBanner:
          false, // Menyembunyikan banner debug di pojok kanan atas
      home: Scaffold(
        backgroundColor: Colors.grey.shade200, // Warna latar belakang aplikasi
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Padding di sekeliling card
            child: Card(
              elevation: 4, // Memberikan bayangan pada card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16,
                ), // Membuat sudut card menjadi membulat
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Tinggi card menyesuaikan isi
                children: [
                  // Widget gambar bagian atas card
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16), // Membulatkan sudut atas gambar
                    ),
                    child: Image.network(
                      // Gambar Golden Retriever dari URL
                      'https://asset.kompas.com/crops/679gLLzMfIbhta9BZCH5Px5vLmU=/36x0:973x625/1200x800/data/photo/2022/08/14/62f8251bc720e.jpg',
                      fit:
                          BoxFit
                              .cover, // Menutupi seluruh area dengan proporsional
                      height: 200, // 🔍 Gambar diperbesar ke tinggi 480
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        // Jika gambar gagal dimuat, tampilkan placeholder
                        return Container(
                          height: 180,
                          color: Colors.grey,
                          child: const Center(
                            child: Text('Gambar gagal dimuat'),
                          ),
                        );
                      },
                    ),
                  ),

                  // Bagian isi teks di dalam card
                  Padding(
                    padding: const EdgeInsets.all(
                      16.0,
                    ), // Padding di dalam card
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Tanggal dan waktu
                        const Text(
                          '24 April 2025, 10:00 WIB',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 8),

                        // Judul informasi
                        const Text(
                          'Mengenal Golden Retriever Lebih Dekat!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Paragraf penjelasan tentang anjing Golden Retriever
                        const Text(
                          'Golden Retriever adalah anjing yang cerdas, bersahabat, dan sangat cocok menjadi sahabat keluarga. '
                          'Dengan bulunya yang keemasan dan sifatnya yang lembut, anjing ini tidak hanya menawan tapi juga setia. '
                          'Yuk, kenali lebih jauh karakter dan cara merawat Golden Retriever tanpa repot!',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
