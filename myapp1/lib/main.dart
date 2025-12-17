
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){

          if(index == 0 ){
            MySnackBar("This is home bottom menu",context);
          }
          if(index == 1){
            MySnackBar("This is contact bottom menu",context);
          }
          if(index == 2){
            MySnackBar("This is profile bottom menu",context);
          }

        },

      ),

      endDrawer: Drawer(

        child: ListView(

          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),

                accountName: Padding(
                  padding:  const EdgeInsets.only(top: 8),
                  child:Text("Sezan Mahmud",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),

                accountEmail: Text(
                  "sezanmahmud@gmail.com",
                  style: TextStyle(color: Colors.black54),
                ),

                //currentAccountPicture: Image.network("https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-1/595433681_844717088552870_4214136399129611571_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=100&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeFYLh0n_0bdcVokNHW8U0b6jq8qeeoR8CaOryp56hHwJvuCGJbBXyhOJCOA89M1AOD88ckLgyK5EgcnuqzVx_Uq&_nc_ohc=W0EfUqV4SXcQ7kNvwG4cP45&_nc_oc=AdnQUUbx-HFC7cKv9oGKQIAAbPUrW9aEhtEGMH0CKn0_TJtKLWOoUfzwn3ojrpKTW2U&_nc_zt=24&_nc_ht=scontent.fdac191-1.fna&_nc_gid=7V28SoEOjdc_bdb5zgR1MA&oh=00_AflqOlDtfqKalpnSTUp1_7R6cHxwzW1qlmXABvnwxZ_u1Q&oe=694657BE"),    // Picture Link
                currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/131911000?s=96&v=4"),),   // Circle Shape Avatar

                onDetailsPressed: (){MySnackBar("This is my profile", context);},
              ),
            ),
            // Drawer Header


            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                MySnackBar("This is Home",context);
              },
            ),

            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
                  MySnackBar("This is Profile",context);
                }
            ),

            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){
                  MySnackBar("This is Email",context);
                }
            ),

          ],

        ),
      ),

      drawer: Drawer(

        child: ListView(

          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepOrangeAccent),

                accountName: Padding(
                  padding:  const EdgeInsets.only(top: 8),
                  child:Text("Sezan Mahmud",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),

                accountEmail: Text(
                  "sezanmahmud@gmail.com",
                  style: TextStyle(color: Colors.black54),
                ),

                //currentAccountPicture: Image.network("https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-1/595433681_844717088552870_4214136399129611571_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=100&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeFYLh0n_0bdcVokNHW8U0b6jq8qeeoR8CaOryp56hHwJvuCGJbBXyhOJCOA89M1AOD88ckLgyK5EgcnuqzVx_Uq&_nc_ohc=W0EfUqV4SXcQ7kNvwG4cP45&_nc_oc=AdnQUUbx-HFC7cKv9oGKQIAAbPUrW9aEhtEGMH0CKn0_TJtKLWOoUfzwn3ojrpKTW2U&_nc_zt=24&_nc_ht=scontent.fdac191-1.fna&_nc_gid=7V28SoEOjdc_bdb5zgR1MA&oh=00_AflqOlDtfqKalpnSTUp1_7R6cHxwzW1qlmXABvnwxZ_u1Q&oe=694657BE"),    // Picture Link
                currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/131911000?s=96&v=4"),),   // Circle Shape Avatar

                onDetailsPressed: (){MySnackBar("This is my profile", context);},
              ),
            ),
            // Drawer Header


            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                MySnackBar("This is Home",context);
              },
            ),

            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
                  MySnackBar("This is Profile",context);
                }
            ),

            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){
                  MySnackBar("This is Email",context);
                }
            ),

          ],

        ),
      ),

      //                         Container

      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(color: Colors.black,width: 6)

        ),
        child: Image.network("https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/493937391_657139493977298_8241196125091346587_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGYNYoaIw_lW5G8Ii6sDuKyNm1M15GUgUc2bUzXkZSBR-Ke5jrokHffoHZVtCJD7hJhwYm44czk8B8TYpLeaOLi&_nc_ohc=0Sa0G8umMZkQ7kNvwFmNgd7&_nc_oc=AdnECHhOLIiQYTdt8xdPGnJGRwdrvojO-Ux2tLTQ4YzfVEax2KTE6VdFynY2BCwt-l8&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=iSF35BaYH37lEsZC91GWuA&oh=00_AfkiVAfpepWFYIUzdqvhsVeqsN71CVrfaVKf2YHD1DyE2A&oe=694786D1"),
      )




    );

  }
}