import 'package:flutter/material.dart';
import '../data/shared_preferences.dart';
import 'home_page.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );

    bool isLogged = await SharedPrefsHelper().getUser();
    if (isLogged == true){
      // Ir p/ pag de HomePage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
      );
    } else {
      // Ir p/ pag de Login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const LoginPage();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF10397B),
      body: Center(
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/9/99/Logo-hurb-branca-bg-azul.jpg'),
      ),
    );
  }
}