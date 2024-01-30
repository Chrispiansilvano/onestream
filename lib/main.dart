import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Index(),
    );
  }
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 49, 24, 53),
        leading: Container(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'images/logo.png',

            // height: 60,
          ),
        ),
        title: Title(
          color: const Color.fromARGB(255, 38, 174, 42),
          child: const Text(
            'Onestream',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
              size: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 37, 2, 42),
      ),
    );
  }
}
