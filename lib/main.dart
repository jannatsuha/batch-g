import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
List<String> imgList=[
  "assets/image/img6.jpg",
  "assets/image/img5.jpg",
  "assets/image/img4.jpeg",
  "assets/image/img3.png",
  "assets/image/img2.jpg",
  "assets/image/img1.jpeg"
];
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
              Expanded(
                child: ListView.builder(
                    itemCount: imgList.length,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          Container(
                              height: 200,
                              width: 200,
                              child:
                              Image.asset
                                (imgList[index],
                                fit: BoxFit.cover,)
                          ),
                          Text("Pic: Flower")
                        ],
                      );
                    }
                ),
              )

            ],
          ),
        )

    );
  }
}





