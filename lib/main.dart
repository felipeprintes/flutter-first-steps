import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estudo sobre navegação',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PrimeiraRota(),
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  const PrimeiraRota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SegundaRota()));
                },
                child: Text('Segunda Tela'))
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  const SegundaRota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Segunda Rota')
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Votlar para PRIMEIRA ROTA'))
          ],
        ),
      ),
    );
  }
}

