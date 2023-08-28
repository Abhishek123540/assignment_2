import 'package:flutter/material.dart';

import 'widgets/bodi.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _selectedTab = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lora',
      ),
      title: 'Demo Task',
      home: Scaffold(
        backgroundColor: const Color(0xffEEF3FD),
        drawer: const Drawer(
          backgroundColor: Color(0xffEEF3FD),
        ),
        appBar: AppBar(
          elevation: 0,
          title: const Text(''),
          backgroundColor: const Color(0xffEEF3FD),
          foregroundColor: Colors.grey,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: const Bodi(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.backup_table),
              label: 'Hub',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'profile',
            ),
          ],
          currentIndex: _selectedTab,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            setState(() {
              _selectedTab = value;
            });
          },
        ),
      ),
    );
  }
}
