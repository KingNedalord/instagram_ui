import 'package:flutter/material.dart';
import 'package:instagram/mainPage.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController loginCont1 = TextEditingController();
  TextEditingController passwordContr1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Registration",
                style: TextStyle(
                    fontFamily: "Shyest",
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: loginCont1,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "LogIn"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordContr1,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                  onPressed: () {
                    if (loginCont1.value.text != "" &&
                        passwordContr1.value.text != "") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Main_Page()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("login or passsword is incorrect"),
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
                          "Sign Up",
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
