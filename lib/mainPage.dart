import 'package:flutter/material.dart';
import 'package:instagram/stories.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({super.key});

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  List<Stories> stories = [
    Stories(image: "https://android-obzor.com/wp-content/uploads/2022/03/28e4ac42f547e6ac0f50f7cfa916ca93.jpg", nickname: "Hacker"),
    Stories(image: "https://coolsen.ru/wp-content/uploads/2021/06/1-3.jpg", nickname: "Bicker"),
    Stories(image: "https://otkritkis.com/wp-content/uploads/2022/06/ra8ja-scaled.jpg", nickname: "Marshmallow"),
    Stories(image: "https://i.pinimg.com/originals/c8/1c/ae/c81cae2788d2e54bcd23592fb4dd708d.jpg", nickname: "Girl"),
    Stories(image: "https://proprikol.ru/wp-content/uploads/2020/02/kartinki-na-avatarku-dlya-parnej-i-muzhchin-3-1.jpg", nickname: "Pantera"),
    Stories(image: "https://otkritkis.com/wp-content/uploads/2021/12/966354c619a9b618f2e8.jpg", nickname: "Eminem"),
    Stories(image: "https://proprikol.ru/wp-content/uploads/2020/02/kartinki-na-avatarku-dlya-parnej-i-muzhchin-1-1.jpg", nickname: "Brat"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 1, left: 1, right: 1),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.camera_alt_outlined),
                      Image.asset(
                        "images/instagramtext.png",
                        width: 105,
                        height: 82,
                      ),
                      Icon(Icons.send),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey[300],
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Column(
                      children: [
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(35), // Image radius
                            child: Image.network(stories[index].image,
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(stories[index].nickname)
                      ],
                    );
                  },
                  itemCount: stories.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
