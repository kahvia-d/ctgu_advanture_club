import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.header,
    required this.content,
    this.rightHeader = true,
  });

  final String header;
  final String content;
  final bool rightHeader;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(header),
        ),
        const SizedBox(width: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(219, 13, 75, 1),
            ),
            child: Text(
              content,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        )
      ],
    );
  }
}
