import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Elephants'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return ListView(
      children: <Widget>[
        // ignore: prefer_const_constructors
        Text("Elefante"),
        _bigItem(),
        _item('nane', 'assets/maria.jpg')
      ],
    );
  }

  Widget _bigItem() {
    var screenwidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: (screenwidth - 64) * 3 / 5,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/juana.jpg')),
      ),
    );
  }

  Widget _item(String name, String imageName) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(),
                // ignore: prefer_const_constructors
                Text('Maria')
              ],
            ),
            // ignore: prefer_const_constructors
            Text(''),
            // ignore: prefer_const_constructors
            Text('')
          ],
        ),
      ],
    );
  }
}
