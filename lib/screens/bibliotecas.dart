import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bibliotecas extends StatefulWidget {
  const Bibliotecas({Key? key}) : super(key: key);

  @override
  State<Bibliotecas> createState() => _BibliotecasState();
}

class _BibliotecasState extends State<Bibliotecas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Align(
          alignment: FractionalOffset(0.05, 0.1),
          child: Text('Bibliotecas',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ))),
        ),
      ),
    );
  }
}
