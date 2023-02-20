import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:min_altar_de_adoracao/screens/bibliotecas.dart';
import 'package:min_altar_de_adoracao/screens/home.dart';
import 'package:min_altar_de_adoracao/screens/pesquisa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Pesquisa(),
    Bibliotecas(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar que pode ser utilizado
      // appBar: AppBar(
      //  title: Center(
      //     child: SizedBox(
      //       height: kToolbarHeight,
      //       child: Image.asset('assets/images/logoapp.png'),
      //     ),
      //    ),
      //   ),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      //barra
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Pesquisa",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: "Bibliotecas",
              backgroundColor: Colors.yellow),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
