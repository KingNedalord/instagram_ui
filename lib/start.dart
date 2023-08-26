import 'package:flutter/material.dart';
import 'package:instagram/login.dart';
import 'package:instagram/registration.dart';

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
            const Text(
              "Instagram",
              style: TextStyle(
                  fontFamily: "shy", fontSize: 50, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 50),
            Image.asset("assets/ava.png"),
            const Text("jacob_w"),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Second()));
                },
                child: Container(
                  width: 330,
                  height: 40,
                  color: Colors.blue[700],
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            TextButton(onPressed: () {}, child: const Text("Switch account")),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Registration()));
              },
              child: const Text(
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
