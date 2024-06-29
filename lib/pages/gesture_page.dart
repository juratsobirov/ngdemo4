import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Page"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: GestureDetector(
         onTap: (){
           print("Text is pressed");
         },
          onLongPress: (){
           print("Text is long pressed");
          },
          onDoubleTap: (){
           print("Text is pressed twise");
          },
          child: Text("Press me", style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}
