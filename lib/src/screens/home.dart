import 'package:flutter/material.dart';

// 各食堂の人数 カメラで取得した人数で合計を表示
int? a_number = 5;
int? b_number = 11;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  congestionDetermination(number){
    if(number<5){
      return '空いています';
    }else if(number<10){
      return 'やや混んでる';
    }else{
      return '激混み';
    }
  }

  //待ち時間の判定(リトルの公式)
  waitTimeJudge(number){
    if(number<5){
      return '1';
    }else if(number<10){
      return '3';
    }else{
      return '10';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),

      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              color: Colors.white,
              margin: const EdgeInsets.all(30), 
              elevation: 20.0,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior:
                Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  const Text('食堂Aの混雑状況',textAlign: TextAlign.center,),
                  Text('$a_number人',textAlign: TextAlign.center,),
                  Text('${congestionDetermination(a_number)}',textAlign: TextAlign.center,),
                  Text('待ち時間：${waitTimeJudge(a_number)}分',textAlign: TextAlign.center,),
                  // Row(
                  //   children: [
                  //     for(var i=0;i<a_number!;i++)
                  //     const Icon(Icons.man,size:30)
                  //   ],
                  // ),
                  
                  
                ],
              ),
              
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.all(30), 
              elevation: 20.0,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior:
                Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  const Text('食堂Bの混雑状況',textAlign: TextAlign.center,),
                  Text('$b_number人',textAlign: TextAlign.center,),
                  Text('${congestionDetermination(b_number)}',textAlign: TextAlign.center,),
                  Text('待ち時間：${waitTimeJudge(b_number)}分',textAlign: TextAlign.center,),
                  // Row(
                  //   children: [
                  //     for(var i=0;i<b_number!;i++)
                  //     const Icon(Icons.man,size:30)
                  //   ],
                  // ),
                ],
              ),
              
            ),
            ListView(
              children: const <Widget>[
                Text('メニューA'),
                Text('メニューB'),
              ],
            )
            
          ],
        )
      )
    );
  }
}
