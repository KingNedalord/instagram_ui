import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Text(
              "jacob_w",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            floating: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 45, // Image radius
                            backgroundImage: AssetImage("assets/ava.png"),
                          ),
                          Column(
                            children: [Text("54"), Text("Posts")],
                          ),
                          Column(
                            children: [Text("834"), Text("Followers")],
                          ),
                          Column(
                            children: [Text("162"), Text("Following")],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jacob West",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Row(children: [
                            Text("Digital goodies designer "),
                            Text(
                              "@pixellz",
                              style: TextStyle(color: Colors.blue[300]),
                            )
                          ]),
                          Text("Everything is designed"),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[200]),
                                height: 30,
                                width: 300,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Edit profile"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30, // Image radius
                                    backgroundImage:
                                        AssetImage("assets/friends.jpg"),
                                  ),
                                  Text("Friends")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30, // Image radius
                                    backgroundImage:
                                        AssetImage('assets/programmer.jpg'),
                                  ),
                                  Text("Design")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30, // Image radius
                                    backgroundImage:
                                        AssetImage('assets/sport.jpg'),
                                  ),
                                  Text("Sport")
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
              margin: EdgeInsets.all(8.0),
            );
          }, childCount: 10)),
        ],
      ),
    );
  }
}
