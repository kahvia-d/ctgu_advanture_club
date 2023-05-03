import 'package:ctgu_advanture_club/components/TaskCard.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          title: const Text("委托中心"),
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
                  image: AssetImage("images/task.jpg"),
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
                        "这里有各色各样的委托，务必认真对待噢",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Welcome to the task center, cope with them carefully.",
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
          child: TaskCard(
            header: "images/header_cat.jpg",
            name: "Jisam",
            time: "2 mins ago",
            content: "帮忙找下丢失的白色挎包,差不多长这样",
            reward: "一杯奶茶",
            pics: ["images/bag.jpg"],
          ),
        ),
        const SliverToBoxAdapter(
          child: TaskCard(
            header: "images/header_girl.jpg",
            name: "Acil",
            time: "31 mins ago",
            content: "有人帮我跑个腿去欣苑拿快递吗？人在西苑，太远了不想去。😆",
            reward: "3￥",
          ),
        ),
      ],
    );
  }
}
