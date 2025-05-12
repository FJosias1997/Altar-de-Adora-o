import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Musica extends StatefulWidget {
  const Musica({Key? key}) : super(key: key);

  @override
  State<Musica> createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'AKdLFaoC-b8',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Material(
        child: Align(
          alignment: FractionalOffset(0.05, 0.2),
          child: SingleChildScrollView(
            // padding: EdgeInsets.all(8.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: 44),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 250,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Colors.black.withAlpha(3),
                                Colors.black12,
                                Colors.black45,
                              ],
                            ),
                          ),
                          child: Text(
                            'Profetiza - Jefferson e Suellen',
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  //video youtube

                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                    progressColors: ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent,
                    ),
                    //onReady: () {
                    //   _controller.addListener(Listener());
                    //  },
                  ),

                  //fim
                  SizedBox(height: 15),
                  //começa a letra

                  ExpandablePanel(
                    header: Text(
                      'Letra',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    collapsed: Text(
                      "Profetiza, Ezequiel....",
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20),
                    ),
                    expanded: Text(
                      "Profetiza, Ezequiel\n Que esse vale de ossos secos vai reviver\n Mas Senhor, não estou vendo o Seu mover\n Ezequiel, só profetiza\n \n Como podem esses ossos reviver?\n E o Senhor, me disse: Ezequiel, é através do Meu poder\n Enquanto eu profetizava, ossos com ossos se juntavam\n Pois Deus sempre surpreende em meio ao nada\n \n Então, profetiza\n Que esses ossos vão viver\n O milagre vai acontecer\n E você vai contemplar a vitória\n \n Pode até ser impossível aos seus olhos\n Faça como Ezequiel, obedeça a ordem dos céus\n Só profetiza\n \n Pois quando você profetiza, o céu se abre\n Quando você profetiza, Deus faz milagre\n Um reboliço vai acontecer, você vai ver\n \n O vento dos quatro cantos vai soprar\n E no meio do vale Deus vai operar\n Todos os teus sonhos Ele vai ressuscitar\n Quando você profetizar\n \n Profetiza\n Profetiza\n Profetiza\n Profetiza\n \n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n \n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n \n Pois quando você profetiza, o céu se abre\n Pois quando você profetiza, Deus faz milagre\n Um reboliço vai acontecer, você vai ver\n \n O vento dos quatro cantos vai soprar\n E no meio do vale Deus vai operar\n Todos os teus sonhos Ele vai ressuscitar\n Quando você profetizar\n",
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
