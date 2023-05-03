import 'package:flutter/material.dart';

import '../components/PostCard.dart';

class SquarePage extends StatelessWidget {
  const SquarePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          title: const Text("Advanture Club"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          expandedHeight: 200,
          pinned: true,
          // floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("images/store-road.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 15),
                      Text(
                        "欢迎来到工会，这里将提供你想要的服务。",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Welcome to the advanture club, get all services you want here.",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: PostCard(
            header: "images/header_girl.jpg",
            name: "Acil",
            time: "1 mins ago",
            content: "终于放五一假期啦，可是作业还有好多噢。🤣希望能尽早做完，多玩两天。",
            likeNum: "1w+",
            commentNum: "1375",
            shareNum: "429",
          ),
        ),
        const SliverToBoxAdapter(
          child: PostCard(
            header: "images/header_cat.jpg",
            name: "Jisam",
            time: "2 mins ago",
            content: "五一没买到回家的票，有一起出学校玩的吗？我是女生，希望找个女孩子一起出去逛街。😊😊😊",
            likeNum: "3w+",
            commentNum: "4216",
            shareNum: "859",
          ),
        ),
      ],
    );
  }
}
