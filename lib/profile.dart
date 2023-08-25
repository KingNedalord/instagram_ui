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
        title: Row(
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.white,
            actions: [
              DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: TabBar(tabs:[
                        Icon(Icons.person),
                        Icon(Icons.add_card_sharp),
                      ]),
                    ),
                  )
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/ava.png"),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Jacob West",
                                style: TextStyle(fontWeight: FontWeight.w400),),
                              Row(children: [
                                Text("Digital goodies designer "),
                                Text("@pixellz",
                                  style: TextStyle(color: Colors.blue[300]),)
                              ])
                            ],
                          ),
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
