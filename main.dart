import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home() ,

  )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    'Maior que a tristeza de não haver vencido é a vergonha de não ter lutado!','É melhor conquistar a si mesmo do que vencer mil batalhas.','Quem ousou conquistar e saiu pra lutar, chega mais longe!'
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase';

  void _gerarFrase() {

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada= _frases[numeroSorteado];
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        /* decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurple, width: 3
            )
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('imagens/logo.png'),
            Text( _fraseGerada,
              style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text('Nova frase',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
