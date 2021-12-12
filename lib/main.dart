import 'package:batch_g/image_view.dart';
import 'package:batch_g/repo/flower_repo.dart';
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
FlowerRepo flowerRepo=FlowerRepo();
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
                    crossAxisCount: 3,
                  children: flowerRepo.flowerModelList.map(
                        (item) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context)=>
                                          ImageView(item: item,)));
                            },
                            child: Container(
                      height: 200,
                      width: 200,
                      child:
                      Image.asset
                            (item.img,
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





