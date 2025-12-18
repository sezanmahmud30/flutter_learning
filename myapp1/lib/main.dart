
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
   HomeActivity({super.key});


  MySnackBar(messsage,context){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(messsage))
    );
  }

    // Alart Dialog

  MyAlartDialog(context){

    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alart !"),
                content: Text("Do you want to delete !"),
                actions: [

                  TextButton(onPressed: (){
                    MySnackBar("Delete Success", context);                                               // Yes Button
                    Navigator.of(context).pop();

                  }, child: Text("Yes")),

                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),            // No Button
                ],

              )
          );
        }
    );
  }


      //   image.network

  var MyItems = [

    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/597808433_844577748566804_3889757196075129329_n.jpg?stp=dst-jpg_p180x540_tt6&_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGCgTGobm3gHG-GLRs7rEjwPUCw33wq-q89QLDffCr6rzLnZwWzTfzZj6BApH5Q1L-1pUbTEHRRwhFwZtNnBSJ0&_nc_ohc=ID8fvdG4wpgQ7kNvwH2xLpZ&_nc_oc=AdniqyUpZmWOvtxEGgDSBzdB8TTztapVGOXftTeJZsV_wb1SJGd18ruGzdVem-XXnZk&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=HkrHHqGHT961bi1J7XZijQ&oh=00_Afl0DU26Km_qZ_adpKS2Fflk2MIsAHykZPaWZMPzxOSvQQ&oe=6948EB14","title":"Sezan Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/484280106_623403137350934_2713894121381406142_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeFNrLQfs9ox33MmYvfSZOl5WEArInVS9mJYQCsidVL2YgLWcPL0Qd9xfZ4fIn0Zz2geRF8a3BPeyS8mj2G4nWMJ&_nc_ohc=E6RXIm030esQ7kNvwGccPUc&_nc_oc=AdnEwScmHtNA1pdD3g9TJqjNqpRBGtzoVOY_DR1Gp7KI0noU-oRjKcD4V0k7N_iAcBY&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=1Tqq1oI3KhFrqqBQPUSb0g&oh=00_Afm3y_U9rTk7kJfar4zvJQszUjXm_ZiE6yY0BVjq2BNRmQ&oe=6948F689","title":"Nirob Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/484868344_621603694197545_1389079031421361732_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeFqUgSCIQ7UEO4s5FgZjcebhtDPiKknhSWG0M-IqSeFJd5CAEBLdiXAN_8fsZ0svJjtVPVQIRm9MQeu5V42W0hq&_nc_ohc=UbRwHuN03TwQ7kNvwGQowi0&_nc_oc=AdkIFn7yuplu43Gp267y03CZKk_9nzo1xTwS7hYB9v8kFlphNW2wtEqBHnC2EMVSLNc&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=ChtvBzHYk9QGZNiC4EYong&oh=00_Afm3BLpWUGhiMDV0q5pfgfBa_pEdeO7gGouhZhabG51u4g&oe=6948F8A9","title":"Sazib Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/475974672_590687357289179_4149508356410304483_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeGC-I1L_x57P8sCpR-ww-xdtxvGuhsqASi3G8a6GyoBKGDs7fmgRR3zsiBSWxEYUxRKxhUl2Y_3wCAuOKHM4Mlh&_nc_ohc=dAixUFBMbLAQ7kNvwHU4k3H&_nc_oc=Admcrxtnms_FOddXh5KNe1AbVBGkhrnrYEWZppyZSxs7dox10hFiQ48R-g-1w9aj8V0&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=whp9AcXBmux72uDz_S7fQg&oh=00_Afk0tfVO5BjcjtpnasPjEwPPsJG9niezcW7Z4ab6HKDo5A&oe=6948EBEA","title":"Mohin Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/472607176_571734172517831_8572056832321930161_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeG63c0JI7AcVQIYbVPcUA4vM0eBEdNEVRwzR4ER00RVHIKOHgKH24z8puYk_yWJcJToNaCl2ISZ9-dlGut0nzPk&_nc_ohc=DCMEPMNjGn4Q7kNvwGafU9H&_nc_oc=Adm3xb9W7N1PZpiGtw93FqbenBsNOgAp0hiQiHaM8Zkhr_AbhBe0qAIrNpB8g6myZss&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=dbDz9-FdR8VEIfF8rjwLGg&oh=00_AfnxNvQ29sOoCIw9_Zs8OSbuczXf83CN4pubFTi0TojeNA&oe=6948F84A","title":"Rokib Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/472928057_574596425564939_6497737023688598807_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeHz-hDSsd3U9yW2N9V2KAXYe0mQYnMUzFx7SZBicxTMXFvbokojhvk27R3aC9CvdxMx31CQZdkHUK0yOLYbxqrF&_nc_ohc=HvfwsqmFzv8Q7kNvwGI63Lq&_nc_oc=AdnK-6j-pDYcvFtrv_Q-1vdtcQS5SHKVQdlP1SCWNTBAIYdu0l-2sC5xXkXOWfXYz14&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=QnEPvlWYfaujqlupwzsH_A&oh=00_AfmJvItepsferAEMPaFduUuSqmKwVw87DuuRMrbva-OeSg&oe=69491257","title":"Nishat Mahmud"},

    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/597808433_844577748566804_3889757196075129329_n.jpg?stp=dst-jpg_p180x540_tt6&_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGCgTGobm3gHG-GLRs7rEjwPUCw33wq-q89QLDffCr6rzLnZwWzTfzZj6BApH5Q1L-1pUbTEHRRwhFwZtNnBSJ0&_nc_ohc=ID8fvdG4wpgQ7kNvwH2xLpZ&_nc_oc=AdniqyUpZmWOvtxEGgDSBzdB8TTztapVGOXftTeJZsV_wb1SJGd18ruGzdVem-XXnZk&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=HkrHHqGHT961bi1J7XZijQ&oh=00_Afl0DU26Km_qZ_adpKS2Fflk2MIsAHykZPaWZMPzxOSvQQ&oe=6948EB14","title":"Sezan Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/484280106_623403137350934_2713894121381406142_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeFNrLQfs9ox33MmYvfSZOl5WEArInVS9mJYQCsidVL2YgLWcPL0Qd9xfZ4fIn0Zz2geRF8a3BPeyS8mj2G4nWMJ&_nc_ohc=E6RXIm030esQ7kNvwGccPUc&_nc_oc=AdnEwScmHtNA1pdD3g9TJqjNqpRBGtzoVOY_DR1Gp7KI0noU-oRjKcD4V0k7N_iAcBY&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=1Tqq1oI3KhFrqqBQPUSb0g&oh=00_Afm3y_U9rTk7kJfar4zvJQszUjXm_ZiE6yY0BVjq2BNRmQ&oe=6948F689","title":"Nirob Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/484868344_621603694197545_1389079031421361732_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeFqUgSCIQ7UEO4s5FgZjcebhtDPiKknhSWG0M-IqSeFJd5CAEBLdiXAN_8fsZ0svJjtVPVQIRm9MQeu5V42W0hq&_nc_ohc=UbRwHuN03TwQ7kNvwGQowi0&_nc_oc=AdkIFn7yuplu43Gp267y03CZKk_9nzo1xTwS7hYB9v8kFlphNW2wtEqBHnC2EMVSLNc&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=ChtvBzHYk9QGZNiC4EYong&oh=00_Afm3BLpWUGhiMDV0q5pfgfBa_pEdeO7gGouhZhabG51u4g&oe=6948F8A9","title":"Sazib Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/475974672_590687357289179_4149508356410304483_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeGC-I1L_x57P8sCpR-ww-xdtxvGuhsqASi3G8a6GyoBKGDs7fmgRR3zsiBSWxEYUxRKxhUl2Y_3wCAuOKHM4Mlh&_nc_ohc=dAixUFBMbLAQ7kNvwHU4k3H&_nc_oc=Admcrxtnms_FOddXh5KNe1AbVBGkhrnrYEWZppyZSxs7dox10hFiQ48R-g-1w9aj8V0&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=whp9AcXBmux72uDz_S7fQg&oh=00_Afk0tfVO5BjcjtpnasPjEwPPsJG9niezcW7Z4ab6HKDo5A&oe=6948EBEA","title":"Mohin Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/472607176_571734172517831_8572056832321930161_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeG63c0JI7AcVQIYbVPcUA4vM0eBEdNEVRwzR4ER00RVHIKOHgKH24z8puYk_yWJcJToNaCl2ISZ9-dlGut0nzPk&_nc_ohc=DCMEPMNjGn4Q7kNvwGafU9H&_nc_oc=Adm3xb9W7N1PZpiGtw93FqbenBsNOgAp0hiQiHaM8Zkhr_AbhBe0qAIrNpB8g6myZss&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=dbDz9-FdR8VEIfF8rjwLGg&oh=00_AfnxNvQ29sOoCIw9_Zs8OSbuczXf83CN4pubFTi0TojeNA&oe=6948F84A","title":"Rokib Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/472928057_574596425564939_6497737023688598807_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeHz-hDSsd3U9yW2N9V2KAXYe0mQYnMUzFx7SZBicxTMXFvbokojhvk27R3aC9CvdxMx31CQZdkHUK0yOLYbxqrF&_nc_ohc=HvfwsqmFzv8Q7kNvwGI63Lq&_nc_oc=AdnK-6j-pDYcvFtrv_Q-1vdtcQS5SHKVQdlP1SCWNTBAIYdu0l-2sC5xXkXOWfXYz14&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=QnEPvlWYfaujqlupwzsH_A&oh=00_AfmJvItepsferAEMPaFduUuSqmKwVw87DuuRMrbva-OeSg&oe=69491257","title":"Nishat Mahmud"},

    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/597808433_844577748566804_3889757196075129329_n.jpg?stp=dst-jpg_p180x540_tt6&_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGCgTGobm3gHG-GLRs7rEjwPUCw33wq-q89QLDffCr6rzLnZwWzTfzZj6BApH5Q1L-1pUbTEHRRwhFwZtNnBSJ0&_nc_ohc=ID8fvdG4wpgQ7kNvwH2xLpZ&_nc_oc=AdniqyUpZmWOvtxEGgDSBzdB8TTztapVGOXftTeJZsV_wb1SJGd18ruGzdVem-XXnZk&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=HkrHHqGHT961bi1J7XZijQ&oh=00_Afl0DU26Km_qZ_adpKS2Fflk2MIsAHykZPaWZMPzxOSvQQ&oe=6948EB14","title":"Sezan Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/484280106_623403137350934_2713894121381406142_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeFNrLQfs9ox33MmYvfSZOl5WEArInVS9mJYQCsidVL2YgLWcPL0Qd9xfZ4fIn0Zz2geRF8a3BPeyS8mj2G4nWMJ&_nc_ohc=E6RXIm030esQ7kNvwGccPUc&_nc_oc=AdnEwScmHtNA1pdD3g9TJqjNqpRBGtzoVOY_DR1Gp7KI0noU-oRjKcD4V0k7N_iAcBY&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=1Tqq1oI3KhFrqqBQPUSb0g&oh=00_Afm3y_U9rTk7kJfar4zvJQszUjXm_ZiE6yY0BVjq2BNRmQ&oe=6948F689","title":"Nirob Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/484868344_621603694197545_1389079031421361732_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeFqUgSCIQ7UEO4s5FgZjcebhtDPiKknhSWG0M-IqSeFJd5CAEBLdiXAN_8fsZ0svJjtVPVQIRm9MQeu5V42W0hq&_nc_ohc=UbRwHuN03TwQ7kNvwGQowi0&_nc_oc=AdkIFn7yuplu43Gp267y03CZKk_9nzo1xTwS7hYB9v8kFlphNW2wtEqBHnC2EMVSLNc&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=ChtvBzHYk9QGZNiC4EYong&oh=00_Afm3BLpWUGhiMDV0q5pfgfBa_pEdeO7gGouhZhabG51u4g&oe=6948F8A9","title":"Sazib Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/475974672_590687357289179_4149508356410304483_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeGC-I1L_x57P8sCpR-ww-xdtxvGuhsqASi3G8a6GyoBKGDs7fmgRR3zsiBSWxEYUxRKxhUl2Y_3wCAuOKHM4Mlh&_nc_ohc=dAixUFBMbLAQ7kNvwHU4k3H&_nc_oc=Admcrxtnms_FOddXh5KNe1AbVBGkhrnrYEWZppyZSxs7dox10hFiQ48R-g-1w9aj8V0&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=whp9AcXBmux72uDz_S7fQg&oh=00_Afk0tfVO5BjcjtpnasPjEwPPsJG9niezcW7Z4ab6HKDo5A&oe=6948EBEA","title":"Mohin Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/472607176_571734172517831_8572056832321930161_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeG63c0JI7AcVQIYbVPcUA4vM0eBEdNEVRwzR4ER00RVHIKOHgKH24z8puYk_yWJcJToNaCl2ISZ9-dlGut0nzPk&_nc_ohc=DCMEPMNjGn4Q7kNvwGafU9H&_nc_oc=Adm3xb9W7N1PZpiGtw93FqbenBsNOgAp0hiQiHaM8Zkhr_AbhBe0qAIrNpB8g6myZss&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=dbDz9-FdR8VEIfF8rjwLGg&oh=00_AfnxNvQ29sOoCIw9_Zs8OSbuczXf83CN4pubFTi0TojeNA&oe=6948F84A","title":"Rokib Mahmud"},
    {"img": "https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/472928057_574596425564939_6497737023688598807_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeHz-hDSsd3U9yW2N9V2KAXYe0mQYnMUzFx7SZBicxTMXFvbokojhvk27R3aC9CvdxMx31CQZdkHUK0yOLYbxqrF&_nc_ohc=HvfwsqmFzv8Q7kNvwGI63Lq&_nc_oc=AdnK-6j-pDYcvFtrv_Q-1vdtcQS5SHKVQdlP1SCWNTBAIYdu0l-2sC5xXkXOWfXYz14&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=QnEPvlWYfaujqlupwzsH_A&oh=00_AfmJvItepsferAEMPaFduUuSqmKwVw87DuuRMrbva-OeSg&oe=69491257","title":"Nishat Mahmud"}

  ];


  @override
  Widget build(BuildContext context) {

    // ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    //     padding: EdgeInsets.all(10),
    //     backgroundColor: Colors.red,
    //     foregroundColor: Colors.green,
    //     shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.all(Radius.circular(40))
    //     )
    // );

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)

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

      // body: Container(
      //   height: 250,
      //   width: 250,
      //   alignment: Alignment.topCenter,
      //   margin: EdgeInsets.all(15),
      //   padding: EdgeInsets.all(5),
      //   decoration: BoxDecoration(
      //       color: Colors.amber,
      //       border: Border.all(color: Colors.black,width: 6)
      //
      //   ),
      //   child: Image.network("https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/493937391_657139493977298_8241196125091346587_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGYNYoaIw_lW5G8Ii6sDuKyNm1M15GUgUc2bUzXkZSBR-Ke5jrokHffoHZVtCJD7hJhwYm44czk8B8TYpLeaOLi&_nc_ohc=0Sa0G8umMZkQ7kNvwFmNgd7&_nc_oc=AdnECHhOLIiQYTdt8xdPGnJGRwdrvojO-Ux2tLTQ4YzfVEax2KTE6VdFynY2BCwt-l8&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=iSF35BaYH37lEsZC91GWuA&oh=00_AfkiVAfpepWFYIUzdqvhsVeqsN71CVrfaVKf2YHD1DyE2A&oe=694786D1"),
      // )


      //                    Row Container

      // body: Row(
      //
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Container(height: 100,width: 100,child: Image.network("https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/493937391_657139493977298_8241196125091346587_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGYNYoaIw_lW5G8Ii6sDuKyNm1M15GUgUc2bUzXkZSBR-Ke5jrokHffoHZVtCJD7hJhwYm44czk8B8TYpLeaOLi&_nc_ohc=0Sa0G8umMZkQ7kNvwFmNgd7&_nc_oc=AdnECHhOLIiQYTdt8xdPGnJGRwdrvojO-Ux2tLTQ4YzfVEax2KTE6VdFynY2BCwt-l8&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=iSF35BaYH37lEsZC91GWuA&oh=00_AfkiVAfpepWFYIUzdqvhsVeqsN71CVrfaVKf2YHD1DyE2A&oe=694786D1"),),
      //     Container(height: 100,width: 100,child: Image.network("https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/493937391_657139493977298_8241196125091346587_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGYNYoaIw_lW5G8Ii6sDuKyNm1M15GUgUc2bUzXkZSBR-Ke5jrokHffoHZVtCJD7hJhwYm44czk8B8TYpLeaOLi&_nc_ohc=0Sa0G8umMZkQ7kNvwFmNgd7&_nc_oc=AdnECHhOLIiQYTdt8xdPGnJGRwdrvojO-Ux2tLTQ4YzfVEax2KTE6VdFynY2BCwt-l8&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=iSF35BaYH37lEsZC91GWuA&oh=00_AfkiVAfpepWFYIUzdqvhsVeqsN71CVrfaVKf2YHD1DyE2A&oe=694786D1"),),
      //     Container(height: 100,width: 100,child: Image.network("https://scontent.fdac191-1.fna.fbcdn.net/v/t39.30808-6/493937391_657139493977298_8241196125091346587_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGYNYoaIw_lW5G8Ii6sDuKyNm1M15GUgUc2bUzXkZSBR-Ke5jrokHffoHZVtCJD7hJhwYm44czk8B8TYpLeaOLi&_nc_ohc=0Sa0G8umMZkQ7kNvwFmNgd7&_nc_oc=AdnECHhOLIiQYTdt8xdPGnJGRwdrvojO-Ux2tLTQ4YzfVEax2KTE6VdFynY2BCwt-l8&_nc_zt=23&_nc_ht=scontent.fdac191-1.fna&_nc_gid=iSF35BaYH37lEsZC91GWuA&oh=00_AfkiVAfpepWFYIUzdqvhsVeqsN71CVrfaVKf2YHD1DyE2A&oe=694786D1"),),
      //   ],
      // ),



      //     Alert Dialog

      // body: Center(
      //
      //   child: ElevatedButton( child: Text("Click me"),onPressed: (){MyAlartDialog(context);},),
      //
      // )


      //    Sample form ----->

      //  body: Column(
      //    mainAxisAlignment: MainAxisAlignment.start,
      //
      //   children: [
      //     Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "First Name"),),),
      //     Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Last Name"),),),
      //     Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Date of Birth"),),),
      //     Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Email"),),),
      //
      //     Padding(padding: EdgeInsets.all(15),child: ElevatedButton(onPressed: (){}, child: Text("Submit"),style: buttonStyle,),)
      //
      //     ],
      // ),



                   //       Dynamic List View Builder With Gesture Detector

        // body: ListView.builder(
        //
        //   itemCount: MyItems.length,
        //   itemBuilder: (context,index){
        //
        //     return GestureDetector(
        //       onTap: (){MySnackBar(MyItems[index]['title'], context);},
        //       child: Container(
        //         margin: EdgeInsets.all(10),
        //         width: double.infinity,
        //         height: 210,
        //         child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill),
        //       ),
        //     );
        //
        //   },
        //
        // ),



              //   Dynamic List View Builder With Gesture Detector

      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.5
        ),

        itemCount: MyItems.length,
        itemBuilder: (context,index){

          return GestureDetector(
            onTap: (){MySnackBar(MyItems[index]['title'], context);},
            child: Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 210,
              child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill),
            ),
          );

        },

      ),



    );

  }
}