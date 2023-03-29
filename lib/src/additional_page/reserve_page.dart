import 'package:cafeteria_app/src/additional_page/reserved_page.dart';
import 'package:cafeteria_app/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservePage extends StatelessWidget {
  TextEditingController _timeController = TextEditingController();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      String formattedTime = DateFormat('HH:mm').format(DateTime(2000, 1, 1, pickedTime.hour, pickedTime.minute));
      _timeController.text = formattedTime;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('予約画面')),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: 'ユーザー名を入力'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _timeController,
              keyboardType:TextInputType.datetime ,
              onTap: (){
                _selectTime(context);
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '時間帯を指定'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReservedPage()),
              );
            },
            child: const Text(
              '予約を完了する',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
