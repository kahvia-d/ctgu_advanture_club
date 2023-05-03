import 'package:ctgu_advanture_club/pages/MessagePage.dart';
import 'package:ctgu_advanture_club/pages/SquarePage.dart';
import 'package:ctgu_advanture_club/pages/TaskPage.dart';
import 'package:ctgu_advanture_club/route/route.dart';
import 'package:flutter/material.dart';

import 'components/PostCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      title: '三大工会',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  Widget showPage(int index) {
    if (index == 0) {
      return SquarePage();
    } else if (index == 1) {
      return TaskPage();
    } else {
      return MessagePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(21, 21, 21, 1),
      drawer: Drawer(
        child: ListView(
          //内边距设置为0，不然下面的header不能延伸到任务栏
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/black-car.jpg"),
                    fit: BoxFit.cover),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/xiduo.jpg"),
              ),
              accountName: Text("喜多"),
              accountEmail: Text("xuedongtan@163.com"),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("联系我们"),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("关于应用"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("设置"),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: showPage(_selectedIndex),
          ),
          BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: const Color.fromRGBO(219, 13, 75, 1),
            unselectedItemColor: Colors.white60,
            currentIndex: _selectedIndex,
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Square"),
              BottomNavigationBarItem(icon: Icon(Icons.task), label: "Task"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: "Message")
            ],
          )
        ],
      ),
    );
  }
}
