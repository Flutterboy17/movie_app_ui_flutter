import 'package:flutter/material.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({Key? key}) : super(key: key);

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[900],
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45, left: 12, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Newsfeed",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              newsfeed(
                image: 'films/comedy.png', 
                text: '@tmusic', 
                titletext: 'T-Series Comedy Movie',
                textlike: '205', 
                titlecomment: '400', 
                imageurl:  'films/aa.jpg', 
                texttime: '01 sec ago',
              ),
              newsfeed(
                image: 'films/drama.png', 
                text: '@Gmine', 
                titletext: 'Goldmines', 
                textlike: '1.1K', 
                titlecomment: '500', 
                imageurl:  'films/ab.jpg', 
                texttime: '30 sec ago',
              ),
              newsfeed(
                image: 'films/songs.png', 
                text: '@tmusic', 
                titletext: 'T-Series', 
                textlike: '3185', 
                titlecomment: '400', 
                imageurl:  'films/venom.jpg', 
                texttime: '49 min ago',
              ),
              newsfeed(
                image: 'films/music.png', 
                text: '@tmusic', 
                titletext: 'T-Series', 
                textlike: '205', 
                titlecomment: '400', 
                imageurl:  'films/movix.jpg', 
                texttime: '2 min ago',
              ),
           
          
            ],
          ),
        ));
  }

  Widget newsfeed({
    required String text,
    required String texttime,
    required String titlecomment,
    required String textlike,  
    required String titletext, 
    required String image, 
    required String imageurl, 
    }) {
    
    
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
      child: Container(
        height: 365,
        width: 340,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 10, 23, 59),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ListTile(
              trailing:  Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.deepPurple),
                child: Center(
                    child: Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )),
              ),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.deepPurple,
                child: Container(
                  height:45,
                  width: 45,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 10, 23, 59),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              title: Text(
               titletext,
               overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              subtitle: Text(
              text,
              style: TextStyle(
              color: Colors.white70,
              fontSize: 14),
              ),
            ),
           
            Container(
              height: 250,
              width: 310,
              decoration: BoxDecoration(color: Colors.purpleAccent, borderRadius: BorderRadius.circular(25),),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(image: AssetImage(imageurl), fit: BoxFit.fill,)),
            ),
            Padding(
                padding:  EdgeInsets.only(top: 10, left:15, right: 15),
              child: Row(
                children: [
                Icon(Icons.favorite,
                    color:  Colors.deepPurple,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(textlike, style: TextStyle(color: Colors.white,)),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.theater_comedy_sharp,
                    color:  Colors.deepPurple,
                  ),
                  SizedBox(width: 5,),
                  Text(titlecomment, style: TextStyle(color: Colors.white,)),
                  SizedBox(width: 110,),
                  Text(texttime, style: TextStyle(color: Colors.white70,)),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
