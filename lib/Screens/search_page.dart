import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import '../Pages/Navigaton Pages/bottom_bar_page.dart';
import 'detail_page.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
final urlImages = [
    'films/venom.jpg',
    'films/guys.jpg',
    'films/Pri.jpg',
    'films/abc.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: IconButton(
                              icon:  Icon(Icons.arrow_back,),
                              color: Colors.white, onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BottomBarPage())); },
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(10)),
                          
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                    ),
                                  
                                  ),
                                )),
                              Icon(
                                Icons.keyboard_voice_rounded, size: 26,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10,)
                            ],),
                          )
                          ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 5,),
                      child: Row(
                        children:const  [
                          Text("Trending Search", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ),
                             Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider.builder(
                        itemCount: urlImages.length,
                        options: CarouselOptions(
                            onPageChanged: ((index, reason) {
                              setState(() {});
                            }),
                            enlargeCenterPage: true,
                            autoPlay: true,
                            reverse: false,
                            //pageSnapping: true,
                            pauseAutoPlayOnTouch: true,
                            autoPlayAnimationDuration: Duration(seconds: 2),
                            height: 270,
                            enlargeStrategy: CenterPageEnlargeStrategy.height),
                        itemBuilder: (context, index, realIndex) {
                          final urlImage = urlImages[index];
                          return buildImage(urlImage, index);
                        }),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 289,
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
                      Text(
                      "Top Search",
                      style: TextStyle( decoration: TextDecoration.underline,
                          color: Colors.white, fontSize: 28, ),
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
                                borderRadius: BorderRadius.circular(25),
                                 child: Image(
                                   image: AssetImage('films/abb.jpg'),
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
                                 borderRadius: BorderRadius.circular(25),
                                child: Image(
                                   image: AssetImage('films/ab.jpg'),
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
                                borderRadius: BorderRadius.circular(25),
                                 child: Image(
                                  image: AssetImage('films/Pri.jpg'),
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
                                 borderRadius: BorderRadius.circular(25),
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
                                 borderRadius: BorderRadius.circular(25),
                                 child: Image(
                                   image: AssetImage('films/guys.jpg'),
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
                                borderRadius: BorderRadius.circular(25),
                                 child: Image(
                                  image: AssetImage('films/abc.jpeg'),
                                   fit: BoxFit.fill,
                                )),
                           ),
                        ],
                      ),
                          ],
                          
                      ),
                      ),
                     
                      
                     
                    ],
                  ),
        )),
                 );
  }

    Widget buildImage(String urlImage, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            urlImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
