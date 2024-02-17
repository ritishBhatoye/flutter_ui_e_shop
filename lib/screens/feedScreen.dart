import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[400],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new_sharp,
                    color: Colors.white, size: 30),
              ),
              Text(
                "Product",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
            ],
          )),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b7d9211c-26e7-431a-ac24-b0540fb3c00f/air-force-1-07-shoes-WrLlWX.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a0a300da-2e16-4483-ba64-9815cf0598ac/air-force-1-07-shoes-WrLlWX.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3cc96f43-47b6-43cb-951d-d8f73bb2f912/air-force-1-07-shoes-WrLlWX.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/120a31b0-efa7-41c7-9a84-87b1e56ab9c3/air-force-1-07-shoes-WrLlWX.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1c1e5f55-99c2-4522-b398-2352e01ba566/air-force-1-07-shoes-WrLlWX.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 280.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 1.0,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ))
                ],
              ),
            ),
            Text(
              "Nike Air Force 1",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              width: 400,
              height: 100,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            child: Row(
                          children: [
                            Icon(Icons.new_label_rounded,
                                color: Colors.blue[400]),
                            Text("200")
                          ],
                        ))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: Row(
                          children: [
                            Icon(Icons.thumb_up, color: Colors.red[500]),
                            Text(" 20k Likes")
                          ],
                        ))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text("4.5")
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 350,
              child: Text(
                  "Cool Shoes with Casual Style, Suitable for Men and Women, Can be used for Traveling, Marathon, etc."),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Icon(Icons.check_circle,
                      //           color: Colors.blue[400]),
                      //     ),
                      //     Text("Custom Size")
                      //   ],
                      // ),
                      _buildListTile(context),
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Icon(Icons.check_circle,
                      //           color: Colors.blue[400]),
                      //     ),
                      //     Text("Custom Size")
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Icon(Icons.check_circle,
                      //           color: Colors.blue[400]),
                      //     ),
                      //     Text("Custom Size")
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Icon(Icons.check_circle,
                      //           color: Colors.blue[400]),
                      //     ),
                      //     Text("Custom Size")
                      //   ],
                      // ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.check_circle,
                                color: Colors.blue[400]),
                          ),
                          Text("Custom Size")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.check_circle,
                                color: Colors.blue[400]),
                          ),
                          Text("Custom Size")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.check_circle,
                                color: Colors.blue[400]),
                          ),
                          Text("Custom Size")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.check_circle,
                                color: Colors.blue[400]),
                          ),
                          Text("Custom Size")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Size",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text("XS"),
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.circular(6),
                    ),
                    width: 25,
                    height: 20,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'S',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Text("M"),
                  Text("L"),
                  Text("XL"),
                  Text("XXL"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _buildListTile(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ListTile(
        leading: Icon(Icons.check_circle),
        title: Text("Custom Size"),
        tileColor: Colors.amber,
        contentPadding: EdgeInsets.all(0),
        // minVerticalPadding: ,
      ),
    );
  }
}
