import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        title: Center(
          child: const Text(
            '食堂１',
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

      body: Center(
        child: ListView(
          children: <Widget>[
            Text(
              '予想待ち時間 XX分',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,

              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      '人数　○○人',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlueAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
