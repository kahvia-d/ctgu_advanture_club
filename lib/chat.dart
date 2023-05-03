import 'package:ctgu_advanture_club/components/chat_item.dart';
import 'package:flutter/material.dart';

class PersonalChat extends StatelessWidget {
  const PersonalChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, String> map =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String header = map['header']!;
    final String name = map['name']!;
    final String content = map['content']!;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(21, 21, 21, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              children: [ChatItem(header: header, content: content)],
            ),
          ),
          Container(
            // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(33, 33, 33, 1),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromRGBO(38, 38, 38, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: TextFormField(
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                        decoration: const InputDecoration(
                          //设置边框宽度为0和边框颜色透明，以达到无样式居中
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          // hintText: "消息",
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder()),
                    minimumSize: MaterialStateProperty.all(const Size(40, 40)),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(219, 13, 75, 1)),
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.send),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
