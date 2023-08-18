import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  final List <String> _imagens = [
    'assets/1.jpeg',
    'assets/2.jpeg',
    'assets/3.jpeg',
    'assets/4.jpeg',
    'assets/5.jpeg',
    'assets/6.jpeg',
    'assets/7.jpeg',
    'assets/8.jpeg',

  ];

  void _gerarnumeroAleatorio (){
    Random numeroAleatorio = Random();
    setState(() {
      numeroGerado = numeroAleatorio.nextInt(_imagens.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagens Aleatórias',
          style: TextStyle(
              decoration: TextDecoration.overline,
              decorationThickness: 4.00,
              decorationColor: Colors.yellowAccent,
              decorationStyle: TextDecorationStyle.dotted
          ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(100),
                alignment: Alignment.center,
                child: Image.asset(_imagens[numeroGerado]),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.radio_button_checked),
          onPressed: _gerarnumeroAleatorio
      ),
    );
  }
}

