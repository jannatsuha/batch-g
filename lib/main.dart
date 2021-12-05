import 'package:batch_g/image_view.dart';
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
                child: GridView.count(
                    crossAxisCount: 4,
                  children: imgList.map(
                        (item) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context)=>
                                          ImageView(image: item)));
                            },
                            child: Container(
                      height: 200,
                      width: 200,
                      child:
                      Image.asset
                            (item,
                            fit: BoxFit.cover,)
                  ),
                          ),
                        ),
                  ).toList(),
                ),
              )
              //Image.asset("assets/image/weather.gif")
            ],
          ),
        )

    );
  }
}





