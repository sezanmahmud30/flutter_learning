

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/utils/todo_list.dart';

class HomePage extends StatefulWidget{
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    ['Learn Flutter',false],
    ['Drink Coffee',false],

  ];

  void checkBoxChanged(int index){
      todoList[index][1] = !todoList[index][1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade300,

      appBar: AppBar(
        title:const Text("Simple Todo"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(itemCount: todoList.length,itemBuilder: (BuildContext context,index) {
        return TodoList(
          taskName: todoList[index][0],
          taskCompleted: todoList[index][1],
          onChanged: (value) =>checkBoxChanged(index),
        );

      }),
    );
  }
}