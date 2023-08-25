import 'package:flutter/material.dart';
import 'package:instagram/new.dart';


class Main_Page extends StatefulWidget {
  const Main_Page({super.key});

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  List<Stories> stories = [
    Stories(
        image:
            "https://android-obzor.com/wp-content/uploads/2022/03/28e4ac42f547e6ac0f50f7cfa916ca93.jpg",
        nickname: "Hacker"),
    Stories(
        image: "https://coolsen.ru/wp-content/uploads/2021/06/1-3.jpg",
        nickname: "Bicker"),
    Stories(
        image:
            "https://otkritkis.com/wp-content/uploads/2022/06/ra8ja-scaled.jpg",
        nickname: "Marshmallow"),
    Stories(
        image:
            "https://i.pinimg.com/originals/c8/1c/ae/c81cae2788d2e54bcd23592fb4dd708d.jpg",
        nickname: "Girl"),
    Stories(
        image:
            "https://proprikol.ru/wp-content/uploads/2020/02/kartinki-na-avatarku-dlya-parnej-i-muzhchin-3-1.jpg",
        nickname: "Pantera"),
    Stories(
        image:
            "https://otkritkis.com/wp-content/uploads/2021/12/966354c619a9b618f2e8.jpg",
        nickname: "Eminem"),
    Stories(
        image:
            "https://proprikol.ru/wp-content/uploads/2020/02/kartinki-na-avatarku-dlya-parnej-i-muzhchin-1-1.jpg",
        nickname: "Brat"),
  ];
  List<News> news = [
    News(
        ava: "assets/anwar.jpg",
        nickname: "anwar",
        place: "Tokio, Japan",
        image: "assets/japan.png"),
    News(
        ava: "assets/ava.png",
        nickname: "jacob_w",
        place: "Samarkand, Uzbekistan",
        image: "assets/samarkand.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Image.asset("assets/instagramtext.png"),
        leading: Icon(Icons.camera_alt_outlined, color: Colors.black),
        actions: [
          Icon(Icons.live_tv_outlined, color: Colors.black),
          SizedBox(
            width: 15,
          ),
          Transform.rotate(
              angle: 150,
              child: Icon(
                Icons.send,
                color: Colors.black,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
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
                          size: Size.fromRadius(40), // Image radius
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
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, int index) {
                    return Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipOval(
                                    child: SizedBox.fromSize(
                                      size: Size.fromRadius(20), // Image radius
                                      child: Image.asset(news[index].ava,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        news[index].nickname,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        news[index].place,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w200),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_horiz,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width,
                            child: Image.asset(news[index].image),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 0.5,
                    );
                  },
                  itemCount: news.length),
            )
          ],
        ),
      ),
    );
  }
}
