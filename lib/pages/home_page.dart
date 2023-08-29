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
    'assets/9.jpeg',
    'assets/10.jpeg',
    'assets/11.jpeg',
    'assets/12.jpeg',
    'assets/13.jpeg',
    'assets/14.jpeg',
    'assets/15.jpeg',
    'assets/16.jpeg',
    'assets/17.jpeg',
    'assets/18.jpeg',
    'assets/19.jpeg',
    'assets/20.jpeg',
    'assets/21.jpeg',
    'assets/22.jpeg',
    'assets/23.jpeg',
    'assets/24.jpeg',
    'assets/25.jpeg',
    'assets/26.jpeg',
    'assets/27.jpeg',
    'assets/28.jpeg',
    'assets/29.jpeg',
    'assets/30.jpeg',
    'assets/31.jpeg',
    'assets/32.jpeg',
    'assets/33.jpeg',
    'assets/34.jpeg',
    'assets/35.jpeg',
    'assets/36.jpeg',
    'assets/37.jpeg',
    'assets/38.jpeg',
    'assets/39.jpeg',
    'assets/40.jpeg',
    'assets/41.jpeg',
    'assets/42.jpeg',

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
          ),
        ),
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

