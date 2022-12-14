import 'package:flutter/material.dart';

class TentangPage extends StatefulWidget {
  const TentangPage({Key? key}) : super(key: key);

  @override
  State<TentangPage> createState() => _TentangPageState();
}

class _TentangPageState extends State<TentangPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: SingleChildScrollView(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Deskripsi', 
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("E-Cooking berdiri pada tahun 2022, aplikasi ini menampilkan berbagai resep makanan yang dapat mempermudah untuk mengetahui seputar informasi resep masakan dan merekomendasikan menu masakan dengan bahan yang ada dan bisa diakses dengan mudah dan praktis.",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify),
                  ),
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("E-Cooking ini juga akan memiliki konten di social media seperti pada Facebook “E-Cooking” dan Instagram “ecooking.idn”.  Aplikasi ini mencoba lebih dekat dan membantu para audience kami dengan meluncurkan mobile app E-Cooking. Karena dengan mobile app E-Cooking, kamu bisa bebas masak apa saja dengan mudah.",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify),
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Visi', 
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Menjadi aplikasi resep terbesar di Indonesia. Dengan resep makanan E-Cooking, menghasilkan kalangan masyarakat yang bisa masak minimal 5 resep masakan, dan memakai produk-produk pilihan resep E-Cooking untuk membantu pekerjaan dapur agar lebih baik.",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify),
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Misi', 
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("1. Menjangkau seluruh kalangan masyarakat di Indonesia, mulai dari pulau Jawa, Bali, Sumatera, Kalimantan, Sulawesi, dan seluruh Indonesia.",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify),
                  ),
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("2. Mengedukasi tentang tips dapur, cara memasak dsb.                                  ",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left),
                  ),
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("3. Menghasilkan waktu berkualitas untuk berkumpul bersama lewat kegiatan memasak.     ",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify),
                  ),
          ]),
    ));
  }
}
