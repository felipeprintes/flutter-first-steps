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
      theme: ThemeData(primarySwatch: Colors.amber),
      home: PrimeiraRota(),
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  const PrimeiraRota({Key? key}) : super(key: key);

  static const _myTitle = "Primeira Rota 100";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(_myTitle, style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SegundaRota()));
                },
                child: Text('Segunda Tela'))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          print('Recebi uma ação direto do telefone');
        },
        tooltip: ('O que isso faz?'),
        child: const Icon(
          Icons.add,
          color: Colors.amber,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class SegundaRota extends StatelessWidget {
  const SegundaRota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Rota')),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Votlar para PRIMEIRA ROTA'))
          ],
        ),
      ),
    );
  }
}
