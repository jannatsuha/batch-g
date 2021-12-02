import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        centerTitle: true,
      ),
      body:
        Center(
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 6
                    )
                  ),
                  child:
                  Image.network("https://live.staticflickr.com/168/433822493_8bd3f1fd02_b.jpg",
                  fit: BoxFit.cover,)
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                  width: 200,
                  child:
                  Image.asset("assets/image/img5.jpg",
                  fit: BoxFit.cover,))
            ],
          ),
        )

    );
  }
}





