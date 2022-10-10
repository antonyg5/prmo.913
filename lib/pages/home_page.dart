import 'package:antony_913/pages/grid_page.dart';
import 'package:antony_913/pages/temp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:antony_913/pages/destaques_page.dart';

import '../data/shared_preferences.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
 int selectedIndex = 0;
 List pages = const [
   DestaquesPage(),
   GridPacotes(),
   TemporariaPage(),
   TemporariaPage(),
 ];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Pesquisar'),
        backgroundColor: const Color(0xFF10397B),
        actions: [
          IconButton(
            onPressed: () {
              SharedPrefsHelper().logout();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginPage();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFE81F7C),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass),
            label: 'Destaques',
          ),

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag),
            label: 'Pacotes',
          ),

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Perfil',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais',
          ),
        ],
      ),
    );
  }
}
