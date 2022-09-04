import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Column(
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('films/incredibles.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
            Container(
              height: 110,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white10),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Incredibles',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 38,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Action",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 38,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "2.30 Hour",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 38,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "8.8",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Plot",
                  style: TextStyle(color: Colors.purpleAccent, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Incredibles: Let There Be Charnage' ( also known as 'Venom 2') is an upcoming American action, animated, sci-fi, superhero thriller film based on the Marvel Comics character Incredibles.",
                  style: TextStyle(wordSpacing: 2, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Director",
                      style:
                          TextStyle(color: Colors.purpleAccent, fontSize: 17),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Screenplay",
                      style:
                          TextStyle(color: Colors.purpleAccent, fontSize: 17),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Production",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      "Andy Serkis",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Kelly Marcel",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Columbia Pictures",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Cast",
                  style: TextStyle(color: Colors.purpleAccent, fontSize: 18),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(image: AssetImage('films/aa.jpg')),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(image: AssetImage('films/incredibles.jpg')),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(image: AssetImage('films/aa.jpg')),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(image: AssetImage('films/abc.jpeg')),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(image: AssetImage('films/abb.jpg')),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(image: AssetImage('films/ab.jpg')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Recommended for you",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
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
        ],
      ),
    );
  }

  Widget updates({
    required String urlImage,
  }) {
    return Row(
      children: [
        SizedBox(
          height: 130,
          width: 130,
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
}
