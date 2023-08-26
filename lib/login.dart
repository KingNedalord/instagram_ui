import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/mainPage.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController loginContr = TextEditingController();
  TextEditingController passwordContr = TextEditingController();

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
                    fontFamily: "shy",
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: loginContr,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "LogIn"),
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
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                  onPressed: () {
                    if (loginContr != "" && passwordContr != "") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Main_Page()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("login or password is incorrect"),
                      ));
                    }
                  },
                  child: Container(
                    width: 330,
                    height: 40,
                    color: Colors.blue[700],
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {},
                child: Image.asset("assets/facebook.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Divider(
                    height: 1,
                    color: Colors.grey,
                    indent: 15,
                    endIndent: 15,
                  )),
                  Text("OR"),
                  Expanded(
                      child: Divider(
                          height: 1,
                          color: Colors.grey,
                          indent: 15,
                          endIndent: 15))
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Instagram  from  Facebook",
            style: TextStyle(fontFamily: "Schyler"),
          )
        ]));
  }
}
