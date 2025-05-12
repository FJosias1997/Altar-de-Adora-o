import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'musicas/musica.dart';
import 'noticia.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final urlImages = [
    'https://images.unsplash.com/photo-1647311052046-15181ba1f762?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1647296020397-a79cd5127090?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1647353337660-8b27b53b07f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1534353436294-0dbd4bdac845?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Align(
          alignment: FractionalOffset(0.05, 0.1),
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 44),
                  Text(
                    'Bem-Vindo',
                    style: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Notícias Recentes',
                    style: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 7),
                  //Aqui começa o carousel slider
                  //---------
                  CarouselSlider.builder(
                    options: CarouselOptions(height: 200),
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImages[index];
                      return buildImage(urlImage, index, context);
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Música da Semana',
                    style: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Profetiza'),
                      subtitle: Text('Jefferson e Suellen. Album: Singles EP'),
                      isThreeLine: true,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Musica(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Escala da Semana',
                    style: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (BuildContext context, index) {
                          return Row(
                            children: [
                              Column(
                                children: [
                                  buildCard(),
                                  SizedBox(height: 3),
                                  Text('Larissa Reis',
                                      style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700),
                                      ))
                                ],
                              ),
                              const SizedBox(width: 6),
                            ],
                          );
                        }),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Avisos Rápidos',
                    style: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 10),

                  Card(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                              'Este é um exemplo de card em flutter. Testando a quantidade de linhas possíveis para este card. Mais um teste para ver '),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Escala da Semana -- Função
Widget buildCard() => Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
        image: DecorationImage(image: AssetImage('assets/images/larissa.jpg')),
      ),
    );

//Notícias Recentes -- função
Widget buildImage(String urlImage, int index, BuildContext context) =>
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Noticia(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    );
