import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Musica extends StatefulWidget {
  const Musica({Key? key}) : super(key: key);

  @override
  _MusicaState createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  YoutubePlayerController _controller = YoutubePlayerController(
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
                  //come??a a letra

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
                      "Profetiza, Ezequiel\n Que esse vale de ossos secos vai reviver\n Mas Senhor, n??o estou vendo o Seu mover\n Ezequiel, s?? profetiza\n \n Como podem esses ossos reviver?\n E o Senhor, me disse: Ezequiel, ?? atrav??s do Meu poder\n Enquanto eu profetizava, ossos com ossos se juntavam\n Pois Deus sempre surpreende em meio ao nada\n \n Ent??o, profetiza\n Que esses ossos v??o viver\n O milagre vai acontecer\n E voc?? vai contemplar a vit??ria\n \n Pode at?? ser imposs??vel aos seus olhos\n Fa??a como Ezequiel, obede??a a ordem dos c??us\n S?? profetiza\n \n Pois quando voc?? profetiza, o c??u se abre\n Quando voc?? profetiza, Deus faz milagre\n Um reboli??o vai acontecer, voc?? vai ver\n \n O vento dos quatro cantos vai soprar\n E no meio do vale Deus vai operar\n Todos os teus sonhos Ele vai ressuscitar\n Quando voc?? profetizar\n \n Profetiza\n Profetiza\n Profetiza\n Profetiza\n \n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n \n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n Profetiza\n \n Pois quando voc?? profetiza, o c??u se abre\n Pois quando voc?? profetiza, Deus faz milagre\n Um reboli??o vai acontecer, voc?? vai ver\n \n O vento dos quatro cantos vai soprar\n E no meio do vale Deus vai operar\n Todos os teus sonhos Ele vai ressuscitar\n Quando voc?? profetizar\n",
                      softWrap: true,
                      textScaleFactor: 1.5,
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
