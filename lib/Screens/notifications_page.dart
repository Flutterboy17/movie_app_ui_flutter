import 'package:flutter/material.dart';
import 'package:movie_app_ui_flutter/Screens/screensPages/notification_screen.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
        child: Column(
          children: [
            Container(
              height: 60, width: 350,
            decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(10)),
            child:  Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>NotificationsPage()));
                  },
                  child: Container(height: 40,
                  width: 100, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.deepPurpleAccent),
                  child: Center(child: Text("All", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                   onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => NotificationScreenButtonsPages()));
                    },
                  child: Text("Upcoming", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 16),),
                ),
                  SizedBox(
                    width: 25,
                  ),
                GestureDetector(
                  onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) =>
                              NotificationScreenButtonsPages()));
                  },
                  child: Text("Updates", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 16),),
                ),
              ],),),
              SizedBox(height: 70,),
              Stack(
                alignment: Alignment.bottomRight,
                children: [SizedBox(
                  height:200,
                  width: 200,
                  child: Image(image: AssetImage('films/notifications.png'), height: 300, width: 300, fit: BoxFit.cover,)
                  ),
                  Container(height: 50, width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.pink), child:Center(child: Text("0", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.white),)))
          ]),
            SizedBox(
              height: 20,
            ),
                 Text(
              "No Notifications!",
              style: TextStyle(
                  color: Colors.white,
                
                  fontSize: 22),
            )

          ],
        ),
        
      ),
      
    );
  }
}
