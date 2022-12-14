import 'package:flutter/material.dart';
import 'package:resep_makanan/views/home.dart';
import 'package:resep_makanan/views/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-COOKING',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: Colors.white,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: SplashScreen(),
    );
  }
}

//untuk menampilkan splashscreen
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 10)).then((value) {
      Navigator.of(context)
          .pushReplacement(CupertinoPageRoute(builder: (ctx) => Navbar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/1.png'), fit: BoxFit.cover)),
      ),
    );
  }
}
