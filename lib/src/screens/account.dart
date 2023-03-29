import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        title: const Center(
          child: Text(
            'アカウント',
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
      body: const Center(
          child: Text('アカウントを作成する', style: TextStyle(fontSize: 32.0))),
    );
  }
}