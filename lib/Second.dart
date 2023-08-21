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
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/instagramtext.png"),
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
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Main_Page()));
                },
                child:
                Image.asset(
                    login == true ? "images/button.png" : "images/button2.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {},
                child: Image.asset("images/facebook.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              //  Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(height: 2,color: Colors.grey,width: MediaQuery.of(context).size.width/2,),
              //     Text("or"),
              //     Container(height: 2,color: Colors.grey,width: MediaQuery.of(context).size.width/2,),
              //   ],
              // )
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
