import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'musicas/musica.dart';

class Noticia extends StatefulWidget {
  const Noticia({Key? key}) : super(key: key);

  @override
  State<Noticia> createState() => _NoticiaState();
}

class _NoticiaState extends State<Noticia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Material(
        child: Align(
          alignment: FractionalOffset(0.05, 0.2),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: 44),
                  Text(
                    'Notícias',
                    style: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Culto Intense Life do Juventude em Ação',
                    style: GoogleFonts.raleway(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 20),

                  //Imagem ilustrativa da noticia
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    color: Colors.grey,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1647311052046-15181ba1f762?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
                      fit: BoxFit.cover,
                    ),
                  ),
                  //Início do corpo da notícia
                  SizedBox(height: 10),
                  //primeira parte texto
                  Text(
                      'é a ocorrência de exteriorização das vísceras. Nessa condição, '
                      'o paciente deve ser posionado em fowler baixo, e as alças '
                      'intestinais cobertas com compressas estéreis úmidas com '
                      'soro fisiológico.',
                      softWrap: true,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400))),

                  //segunda parte texto
                  Text(
                      'é a ocorrência de exteriorização das vísceras. Nessa condição, '
                      'o paciente deve ser posionado em fowler baixo, e as alças '
                      'intestinais cobertas com compressas estéreis úmidas com '
                      'soro fisiológico.',
                      softWrap: true,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400))),
                  //terceira parte texto
                  SizedBox(height: 15),
                  Text(
                      'é a ocorrência de exteriorização das vísceras. Nessa condição, '
                      'o paciente deve ser posionado em fowler baixo, e as alças '
                      'intestinais cobertas com compressas estéreis úmidas com '
                      'soro fisiológico.',
                      softWrap: true,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400))),
                  Text(
                      'é a ocorrência de exteriorização das vísceras. Nessa condição, '
                      'o paciente deve ser posionado em fowler baixo, e as alças '
                      'intestinais cobertas com compressas estéreis úmidas com '
                      'soro fisiológico.',
                      softWrap: true,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400))),
                  Text(
                      'é a ocorrência de exteriorização das vísceras. Nessa condição, '
                      'o paciente deve ser posionado em fowler baixo, e as alças '
                      'intestinais cobertas com compressas estéreis úmidas com '
                      'soro fisiológico.',
                      softWrap: true,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400))),
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
            builder: (context) => Musica(),
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
