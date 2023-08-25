import 'package:flutter/material.dart';

class Stack_tutorial extends StatefulWidget {
  const Stack_tutorial({super.key});

  @override
  State<Stack_tutorial> createState() => _Stack_tutorialState();
}

class _Stack_tutorialState extends State<Stack_tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Container(
          width: 210,
          height: 210,
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(border: Border.all(width: 10,color: Colors.red)),
              height: 200,
              width: 200,
              child: Image.asset(
                "assets/japan.png",
                fit: BoxFit.cover,
              ),
            ),
            Center(child: Text("Stack  Flutter",style: TextStyle(fontSize: 20),))
          ]),
        ),
      ),
    );
  }
}
