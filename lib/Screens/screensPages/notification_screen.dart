import 'package:flutter/material.dart';

class NotificationScreenButtonsPages extends StatelessWidget {
  const NotificationScreenButtonsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.purple[900],
      ),
      backgroundColor: Colors.purple[900],
      body:  Center(child: Text("Upcoming & Updates Page", style: TextStyle(fontSize: 24, color: Colors.white),)),
    );
  }
}
