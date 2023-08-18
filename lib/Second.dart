import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController loginContr = TextEditingController();
  TextEditingController passwordContr = TextEditingController();
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Instagramlogo.png"),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: loginContr,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "LogIn"),
                onChanged: (value) {
                  setState(() {
                    if (value.length > 0) {
                      login = true;
                    }
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordContr,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {},
              child: Image.asset(
                  login == true?"Button.png" : "Button2.png"),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {},
              child: Image.asset("Facebook.png"),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(mainAxisAlignment: MainAxisAlignment.center, children:[Text("Instagram  от  Facebook",style: TextStyle(color: Colors.grey, fontFamily: "Schyler"),)])
    );
  }
}
