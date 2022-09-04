import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_ui_flutter/Screens/notifications_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Screens/detail_page.dart';
import '../../Screens/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
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
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.notifications_outlined,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NotificationsPage()));
                      },
                    ),
                  ),
                  Text(
                    "Moviez",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(25)),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SearchBar()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                      itemCount: urlImages.length,
                      options: CarouselOptions(
                          onPageChanged: ((index, reason) {
                            setState(() {
                              activeIndex = index;
                            
                            });
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
                    height: 15,
                  ),
                  buildindicator(),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Latest Shows",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Show All",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "All",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buildrow(
                      text: 'Movies',
                      urlImage: 'films/corn.png',
                    ),
                    SizedBox(width: 10),
                    buildrow(text: 'Drama', urlImage: 'films/drama.png'),
                    SizedBox(width: 10),
                    buildrow(text: 'Comedy', urlImage: 'films/comedy.png'),
                    SizedBox(
                      width: 10,
                    ),
                    buildrow(text: 'Songs', urlImage: 'films/songs.png'),
                    SizedBox(
                      width: 10,
                    ),
                    buildrow(text: 'Music', urlImage: 'films/music.png'),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    updates(
                      urlImage: 'films/abcd.jpg',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    updates(
                      urlImage: 'films/aa.jpg',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    updates(
                      urlImage: 'films/abb.jpg',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    updates(
                      urlImage: 'films/abcde.jpeg',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    updates(
                      urlImage: 'films/toy.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildrow({
    required String text,
    required String urlImage,
  }) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage(
                urlImage,
              ),
              height: 35,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      ),
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

  Widget updates({
    required String urlImage,
  }) {
    return Row(
      children: [
        SizedBox(
          height: 200,
          width: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image(
              image: AssetImage(
                urlImage,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildindicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ExpandingDotsEffect(
            dotColor: Colors.white70,
            dotHeight: 5,
            dotWidth: 10,
            activeDotColor: Colors.purple),
      );
}
