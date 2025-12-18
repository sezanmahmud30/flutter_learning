
import 'package:flutter/material.dart';

import 'Fragment/AlarmFragment.dart';
import 'Fragment/BalanceFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';


main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,

        home:HomeActivity()

    );
  }
}

        // Home Activity

class HomeActivity extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity1("This is from home to activity 1")));           //  Go Activity 1
          }, child: Text("Go Activity 1")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2("This is from home to activity 2")));           //  Go Activity 2
          }, child: Text("Go Activity 2")),
          
        ],
      ),

    );
  }
}

        // Activity 1

class Activity1 extends StatelessWidget{

  String msg;

   Activity1(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2("This is from activity 1 to activity 2")));       //  Go Activity 2
        }, child: Text("Go Activity 2")),

      ),

    );

  }
}


            // Activity 2

class Activity2 extends StatelessWidget{

  String msg;
   Activity2(
       this.msg,
      {super.key}
      );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),

      body: Center(

        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity1("This is from activity 2 to activity 1")));       //  Go Activity 1
        }, child: Text("Go Activity 1")),

      ),
    );


  }
}