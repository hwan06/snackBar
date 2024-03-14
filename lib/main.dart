import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snack bar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text(
                'This is Snack Bar.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.purple[100],
              duration: const Duration(milliseconds: 1000),
            ));
          },
          style: FilledButton.styleFrom(backgroundColor: Colors.purple[100]),
          child: const Text(
            'show me',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
