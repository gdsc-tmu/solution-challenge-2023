import 'package:cafeteria_app/src/app.dart';
import 'package:cafeteria_app/src/screens/home.dart';
import 'package:flutter/material.dart';

class ReservedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('予約完了画面')),
      ),

      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('予約が完了しました'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>MyApp()),
                  );
                },
                child: const Text(
                  'ホーム画面へ戻る',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),],
        ),
      ),
    );
  }
}