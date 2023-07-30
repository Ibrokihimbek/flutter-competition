import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(PngImage.logo,scale: 6,),
        centerTitle: true,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [

        ],
      ),
    );
  }
}
