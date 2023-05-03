import 'package:ctgu_advanture_club/components/PrivateDialog.dart';
import 'package:flutter/material.dart';

import '../components/PostCard.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          title: const Text("Message"),
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
                image: DecorationImage(
                  image: AssetImage("images/astronauts.png"),
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
                        "这里是消息页，委托人与冒险家的沟通处。",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The message page is somewhere you talk with employer.",
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
          child: PrivateDialog(
            header: "images/header_girl.jpg",
            name: "Kahvia",
            content: "我想要接取你的委托，可以吗？",
            hasRead: true,
          ),
        ),
        const SliverToBoxAdapter(
          child: PrivateDialog(
            header: "images/header_cat.jpg",
            name: "爱猫人士",
            content: "你这委托有人接不，你看我行不行。",
            hasRead: false,
          ),
        ),
        const SliverToBoxAdapter(
          child: PrivateDialog(
            header: "images/xiduo.jpg",
            name: "喜多郁代",
            content: "我会弹吉他哦，交给我吧你的委托。",
            hasRead: false,
          ),
        )
      ],
    );
  }
}
