import 'package:flutter/material.dart';
import 'package:resep_makanan/model/resep.api.dart';
import 'package:resep_makanan/model/resep.dart';
import 'package:resep_makanan/views/detail_resep.dart';
import 'package:resep_makanan/views/widget/resep_card.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Pertanyaan yang Sering Diajukan',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Bagaimana saya dapat menghubungi E-Cooking?                                              ",
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),
                textAlign: TextAlign.justify),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Anda dapat mengirimkan email ke info-id@ecooking.com                                     ",
                style: TextStyle(color: Colors.black,
                fontSize: 16),
                textAlign: TextAlign.justify),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Bagaimana cara mengunduh aplikasi E-Cooking?                                             ",
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),
                textAlign: TextAlign.justify),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Buka App Store atau Google Play dan ketik E-Bakery pada halaman pencarian, pasang atau install secara gratis",
                style: TextStyle(color: Colors.black,
                fontSize: 16),
                textAlign: TextAlign.justify),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Bagaimana cara mencari resep?                                                             ",
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Untuk aplikasi mobile, klik simbol kaca pembesar pada navigasi bagian bawah untuk membuka halaman pencarian. Masukkan kata kunci pencarian berupa nama bahan atau jenis masakan pada kotak pencarian",
                style: TextStyle(color: Colors.black,
                fontSize: 16),
                textAlign: TextAlign.justify),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Bagaimana cara melihat tentang aplikasi E-Cooking?                                               ",
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Pengguna dapat mengklik simbol tanda seru pada aplikasi. Kemudian akan ditampilkan tentang aplikasi mulai dari deskripsi, visi, dan misi E-Cooking",
                style: TextStyle(color: Colors.black,
                fontSize: 16),
                textAlign: TextAlign.justify),
          ),
        ])));
  }
}
