import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(const MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  List  _imagens = [

  ]

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
          title: const Text('Gerando Imagens Aleatórias'),
        ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(100),
                alignment: Alignment.center,
                child: Text(numeroGerado.toString()),
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

