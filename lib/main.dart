import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Frases do Futebol BR',
    home: frases(),
  ));
}

class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {
  // back do app
  // criar um array de frases para ser exibidas
  var _frases = [
    'Quem me vê jogando pensa que o Futebol é Fácil.',
    'Clássico é Clássico e vice-versa.',
    'As pessoas querem que o Brasil vença e ganhe.',
    'Não jogo bola, dou Aula.',
    'Eu fui Craque, meu empresário que era Ruim.',
  ];

  var _frasesGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase() {
    // função de gera a frase aleatória
    //numero sorteado irá pegar aleatoriamente 0,1,2,3 das frases do array

    var numeroSorteado = Random().nextInt(_frases.length);
    //random é um import do tipo import 'dart:math';
    // o random é responsavel por exibir o array de forma aleatoria

    setState(() {
      _frasesGerada = _frases[numeroSorteado];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Frases do Futebol BR',
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.indigo[900],

      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/brasileirao2.png',
                width: 650,
                height: 350,
              ),
              Text(_frasesGerada,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton(
                  onPressed: _gerarFrase,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.indigo[900],
                    textStyle: TextStyle(
                      fontSize: 20,

                      color: Colors.white,

                    ),
                  ),
                  child: Text('Nova Frase',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}

