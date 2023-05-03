import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String header;
  final String name;
  final String time;
  final String content;
  final String likeNum;
  final String commentNum;
  final String shareNum;
  const PostCard({
    super.key,
    required this.header,
    required this.name,
    required this.time,
    required this.content,
    required this.likeNum,
    required this.commentNum,
    required this.shareNum,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal[600],
          ),
          height: 300,
          width: 100,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(header),
                ),
                title: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  time,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white60,
                  ),
                ),
              ),
              const Divider(color: Colors.black),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 30,
                ),
                child: Text(
                  content,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // const Divider(color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "($likeNum)",
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "($commentNum)",
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "($shareNum)",
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
