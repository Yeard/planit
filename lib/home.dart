import 'package:flutter/material.dart';
import 'package:plan_it/task_board_screen.dart';

import 'form_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Text('Welcome To',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center),
          const Text(
            'Plan IT',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
          const Spacer(),
          const SizedBox(
              width: 250,
              child:
                  Text('Your personal Task Management and planning solution ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center)),
          const SizedBox(
            height: 20,
          ),
          Material(
            color: Colors.black54,
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskBoardScreen()),
                );
              },
              child: const SizedBox(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 40, right: 40, top: 15, bottom: 15),
                    child: Text(
                      "Let's get started",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
            /// form
          Material(
            color: Colors.blue,
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormScreen()),
                );
              },
              child: const SizedBox(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 40, right: 40, top: 15, bottom: 15),
                    child: Text(
                      "Form",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  )),
            ),
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
