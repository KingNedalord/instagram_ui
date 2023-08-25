import 'package:flutter/material.dart';
import 'package:instagram/Second.dart';
import 'package:instagram/profile.dart';

void main() {
  runApp(MaterialApp(
    home: Instagram(),
    debugShowCheckedModeBanner: false,
  ));
}

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/instagramtext.png"),
            SizedBox(height: 50),
            Image.asset("assets/ava.png"),
            Text("jacob_w"),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Second()));
              },
              child: Image.asset("assets/button.png"),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(onPressed: () {}, child: Text("Switch account")),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?"),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Sign up",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
