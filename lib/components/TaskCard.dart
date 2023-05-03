import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String header;
  final String name;
  final String time;
  final String content;
  final String reward;
  final List<String>? pics;

  const TaskCard({
    super.key,
    required this.header,
    required this.name,
    required this.time,
    required this.content,
    required this.reward,
    this.pics,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> getPics() {
      List<Widget> pictures = [];
      for (int index = 0; index < pics!.length; index++) {
        pictures.add(Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Container(
            constraints: const BoxConstraints(),
            child: Image.asset(pics![index]),
          ),
        ));
      }
      return pictures;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.brown,
          ),
          // height: 300,
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
                trailing: Text(
                  "报酬：$reward",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
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
              pics == null
                  ? Container()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: getPics(),
                    ),
              //可选按钮
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.comment),
                    label: const Text("交流"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow.shade900),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.error),
                    label: const Text("忽略"),
                  )
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
