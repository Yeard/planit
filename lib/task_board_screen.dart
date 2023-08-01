import 'package:flutter/material.dart';
import 'package:plan_it/task_board_item_card.dart';

/// object
class MyTask{
 final String tittle;
 final String address;
 final String time;

 MyTask({ required this.tittle, required this.address, required this.time});
}


class TaskBoardScreen extends StatelessWidget {
   TaskBoardScreen({super.key});

  /// demo data
  List<MyTask> data=[

    MyTask(tittle: 'Task One', address: 'Your personal Task Management planning solution for planning your day, week& month', time: '12.55 pm 25th May 2023'),
    MyTask(tittle: 'Task Two', address: 'Your personal Task Management planning solution for planning your day, week& month', time: '12.55 pm 25th May 2023'),
    MyTask(tittle: 'Task Three', address: 'Your personal Task Management planning solution for planning your day, week& month', time: '12.55 pm 25th May 2023'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(leading:const Text(''),
          title: const Text('Task Board',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
          centerTitle: true
          ,

        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding:  const EdgeInsets.only(bottom: 15),
              child: TaskBoardItemCard(tittle: data[index].tittle, address: data[index].address, time: data[index].time,),
            );
          },
        ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
         backgroundColor: Colors.black38,
        onPressed: (){},
        child: const Icon(Icons.add,size: 40,color: Colors.white,),
      ),
    );

  }
}
