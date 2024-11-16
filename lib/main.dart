import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Fungsi utama untuk menjalankan aplikasi
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Item Product Coffe'), // Judul pada AppBar
          centerTitle: true, // Mengatur posisi teks di tengah
        ),
        body: ListView(
          padding: const EdgeInsets.all(
              16.0), // Memberikan padding pada seluruh list
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(top: 5), // Memberikan jarak atas
                width: 220, // Lebar kontainer
                decoration: BoxDecoration(
                  color: Colors.brown[50], // Warna latar belakang
                ),
                child: Column(
                  children: [
                    // Membuat gambar dengan sudut melingkar
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12), // Sudut kiri atas
                        topRight: Radius.circular(12), // Sudut kanan atas
                        bottomLeft: Radius.circular(100), // Sudut kiri bawah
                        bottomRight: Radius.circular(100), // Sudut kanan bawah
                      ),
                      child: Image.network(
                        'https://images.pexels.com/photos/7362647/pexels-photo-7362647.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', // URL gambar
                        height: 250, // Tinggi gambar
                        width: 200, // Lebar gambar
                        fit: BoxFit.cover, // Gambar diatur agar memenuhi kotak
                      ),
                    ),
                    const SizedBox(height: 10), // Jarak antar elemen
                    Padding(
                      padding:
                          const EdgeInsets.all(16), // Padding untuk konten teks
                      child: Column(
                        children: [
                          // Nama produk dengan gaya teks
                          Text(
                            'Cappucino Coffe',
                            style: TextStyle(
                              color: Colors.brown[700], // Warna teks
                              fontSize: 18, // Ukuran teks
                              fontWeight: FontWeight.bold, // Teks tebal
                            ),
                          ),
                          const SizedBox(height: 8), // Jarak antar elemen
                          // Baris harga produk
                          const Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Posisi di tengah
                            children: [
                              Text(
                                'Rp. 30.000', // Harga diskon
                                style: TextStyle(
                                  color:
                                      Colors.deepOrange, // Warna harga diskon
                                  fontSize: 16, // Ukuran teks
                                  fontWeight: FontWeight.bold, // Teks tebal
                                ),
                              ),
                              SizedBox(width: 8), // Jarak antar teks
                              Text(
                                'Rp. 45.000', // Harga asli
                                style: TextStyle(
                                  decoration:
                                      TextDecoration.lineThrough, // Garis coret
                                  color: Colors.brown, // Warna teks
                                  fontSize: 12, // Ukuran teks lebih kecil
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8), // Jarak antar elemen
                          // Rating bintang dan jumlah ulasan
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Posisi di tengah
                            children: [
                              RatingBar.builder(
                                initialRating: 3.5, // Rating awal
                                minRating: 1, // Rating minimal
                                direction:
                                    Axis.horizontal, // Arah rating horizontal
                                allowHalfRating:
                                    true, // Mendukung setengah bintang
                                itemCount: 5, // Jumlah total bintang
                                itemSize: 18, // Ukuran bintang
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.yellow[600], // Warna bintang
                                ),
                                onRatingUpdate: (rating) {
                                  print(
                                      rating); // Cetak nilai rating jika diubah
                                },
                                ignoreGestures:
                                    true, // Rating tidak dapat diubah oleh pengguna
                              ),
                              const SizedBox(width: 8), // Jarak antar elemen
                              const Text(
                                '3.2K reviews', // Jumlah ulasan
                                style: TextStyle(
                                  color: Colors.brown, // Warna teks
                                  fontSize: 12, // Ukuran teks lebih kecil
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25), // Jarak antar elemen
                          // Tombol "Shop Now"
                          TextButton(
                            onPressed: () {
                              print('Shop Now'); // Aksi jika tombol ditekan
                            },
                            style: ButtonStyle(
                              padding:
                                  WidgetStateProperty.resolveWith((states) {
                                // Mengatur padding tombol
                                return const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15);
                              }),
                              backgroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                // Warna latar tombol
                                return Colors.brown[700];
                              }),
                              foregroundColor:
                                  WidgetStateProperty.resolveWith((states) {
                                // Warna teks tombol
                                return Colors.white;
                              }),
                              shape: WidgetStateProperty.resolveWith((states) {
                                // Bentuk tombol dengan sudut melingkar
                                return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30));
                              }),
                            ),
                            child: const Text('Shop Now'), // Teks pada tombol
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
