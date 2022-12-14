import 'package:flutter/material.dart';
import 'package:resep_makanan/views/home.dart';
import 'package:resep_makanan/views/faq.dart';
import 'package:resep_makanan/views/search.dart';
import 'package:resep_makanan/views/tentang.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

//untuk beralih ke halaman lain
class _NavbarState extends State<Navbar> {
  int currentIndex = 0;
  final List<Widget> body = [
    HomePage(),
    SearchPage(),
    FaqPage(),
    TentangPage()
  ];

  //untuk menampilkan navbar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text("E-COOKING")
            ],
          ),
        ),
        body: body[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Beranda',
                activeIcon:
                    Icon(Icons.home_outlined, color: Colors.orange)),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'Pencarian',
              activeIcon:
                  Icon(Icons.search_outlined, color: Colors.orange),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.question_answer_outlined,
                color: Colors.black,
              ),
              label: 'FAQ',
              activeIcon:
                  Icon(Icons.question_answer_outlined, color: Colors.orange),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.report,
                color: Colors.black,
              ),
              label: 'Tentang',
              activeIcon:
                  Icon(Icons.report_outlined, color: Colors.orange),
            ),
          ],
          selectedItemColor: Colors.amber[800],
        ));
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}