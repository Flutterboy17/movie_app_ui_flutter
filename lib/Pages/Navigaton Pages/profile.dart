import 'package:flutter/material.dart';

import 'bottom_bar_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BottomBarPage()));
                      },
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 56,
            backgroundColor: Colors.purple,
            child: CircleAvatar(
              radius: 54,
              backgroundColor: Colors.purple[900],
              child: Image(image: AssetImage('films/comedy.png')),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Cristopher Nolan",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Container(
                    height: 40,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.call,
                          size: 18,
                          color: Colors.white,
                        ),
                        Text(
                          "421 345 324",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 15,
                ),
                Container(
                    height: 40,
                    width: 165,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.email,
                          size: 18,
                          color: Colors.white,
                        ),
                        Text(
                          "nolan@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 135,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(100)),
            child: Column(
              children: const [
                SizedBox(
                  height: 8,
                ),
                Image(
                  image: AssetImage(
                    'films/comedy.png',
                  ),
                  height: 45,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "1 Year of Unlimited Moviez",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("USD 50.55/1 Year",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Expire on 05/08/2023",
                  style: TextStyle(color: Colors.yellow, fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              height: 299,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.purple[900],
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text(
                          "Watch History",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                         // color:Colors.purple[900] ,
                            borderRadius: BorderRadius.circular(25)),
                        child:  Center(
                            child: Text(
                          "Downloaded",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 95,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage('films/abc.jpeg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Container(
                        height: 95,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage('films/venom.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Container(
                        height: 95,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage('films/abb.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 95,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage('films/Pri.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Container(
                        height: 95,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage('films/ab.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Container(
                        height: 95,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage('films/guys.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ],
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
