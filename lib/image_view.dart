import 'package:flutter/material.dart';
class ImageView extends StatefulWidget {
  String image;
   ImageView({Key? key,required this.image}) : super(key: key);

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image View"),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(widget.image),
        ),
      ),
    );
  }
}
