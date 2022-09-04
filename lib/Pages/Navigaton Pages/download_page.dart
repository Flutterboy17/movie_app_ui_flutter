import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[900],
        body: Padding(
            padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
            child: Column(children: [
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.deepPurpleAccent),
                      child: Center(
                          child: Text(
                        "Show",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Movie",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Video",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              listCard(image: 'films/aa.jpg', text:"Zee5" , titletext: 'Onward | Official Trailer HD'),
              listCard(image: 'films/abc.jpeg', text:"Zee5" , titletext: 'Onward | Official Trailer HD'),
              
            ])));
  }

  Widget listCard({required String image, required String titletext, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 125,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 10, 23, 59),
        ),
        child: Row(children: [
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 97,
            width: 90,
            child: ClipRRect( borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 5, top: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     titletext,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image(
                                image: AssetImage('films/download.png'),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                         text,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "8.9MB",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              "4.6MB/24MB",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 3,
                              width: 52,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 3,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ]))
        ]),
      ),
    );
  }
}
