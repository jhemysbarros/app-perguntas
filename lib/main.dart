import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final perguntaSelecionada = 0;

  void responder() {
    print(perguntaSelecionada);
  }

  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(child: Text('Resposta 01'), onPressed: responder),
            RaisedButton(child: Text('Resposta 02'), onPressed: responder),
            RaisedButton(child: Text('Resposta 03'), onPressed: responder),
          ],
        ),
      ),
    );
  }
}
