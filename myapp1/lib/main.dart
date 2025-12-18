
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
      body: Center(
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            shadowColor: Colors.amber,
            color: Colors.lightGreen,
            child: SizedBox(
              height: 200,
              width: 200,
              child: Center(child: Text("This is Card"),),

            ),

          ),
      ),

    );

  }
}




