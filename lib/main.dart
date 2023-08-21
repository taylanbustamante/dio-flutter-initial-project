import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Projeto Flutter',
      home: MyHomePage(title: 'Primeiro Projeto Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(227, 25, 24, 1),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você apertou o botão essa quantidade de vezes:',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            Text(
              '$_counter',
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: const Color.fromRGBO(227, 25, 24, 1),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
