
import 'package:flutter/material.dart';

main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,

        home:HomeActivity()

    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  MySnackBar(messsage,context){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(messsage))
    );
  }



  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.red,
        foregroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
        )
    );


    return Scaffold(

      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing:10,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.amber,

        actions: [
          IconButton(onPressed: (){MySnackBar ("This is Search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar ("This is Contact",context);}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){MySnackBar ("This is Email",context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: (){MySnackBar ("This is Comment",context);}, icon: Icon(Icons.comment)),
        ],

      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed:(){
          MySnackBar("This is Floating Action button",context);
        },
      ),




    );

  }
}