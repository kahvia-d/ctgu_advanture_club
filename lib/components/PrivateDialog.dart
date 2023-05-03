import 'package:flutter/material.dart';

class PrivateDialog extends StatelessWidget {
  const PrivateDialog({
    super.key,
    required this.header,
    required this.name,
    required this.content,
    required this.hasRead,
  });

  final String header;
  final String name;
  final String content;
  final bool hasRead;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, 'chat', arguments: {
        "header": header,
        "name": name,
        "content": content,
      }),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(header),
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      subtitle: Text(
        content,
        style: const TextStyle(color: Colors.white70, fontSize: 16),
      ),
      trailing: ClipRRect(
        borderRadius: BorderRadius.circular(2.5),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color:
                hasRead ? Colors.green : const Color.fromRGBO(219, 13, 75, 1),
          ),
        ),
      ),
    );
  }
}
