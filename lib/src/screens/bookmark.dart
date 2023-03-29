import 'package:cafeteria_app/src/additional_page/reserve_page.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        title: Center(
          child: const Text(
            '予約',
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
      body: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context)=>ReservePage()),
                    );
                  },
                    child: Text('予約画面へ進む',
        style: TextStyle(fontSize: 25.0,),
      ),
                  ),
                ],
              ))),
    );
  }
}
