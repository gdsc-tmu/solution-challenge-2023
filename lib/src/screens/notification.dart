import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        title: Center(
          child: const Text(
            'お知らせ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.pink.shade50,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('学食'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('メニュー１'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('メニュー２'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body:
      const Center(child: Text('現在割引中の賞品', style: TextStyle(fontSize: 32.0))),
    );
  }
}