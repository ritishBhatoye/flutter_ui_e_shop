import 'package:flutter/material.dart';
import 'package:flutter_ui_e_shop/screens/feedScreen.dart';
// import '../as';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title: searchBox(),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.white,
              onPressed: () {
                // Add your search functionality here
              },
            )
          ],
        ),
        drawer: Drawer(
            // shadowColor: Colors.white,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 0.0, top: 0.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                    leading: CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.asset(
                          "assets/images/avatar.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text("Arshdeep"),
                    subtitle: Text("abc@gmail.com"),
                  ),
                  Divider(),
                  Text(
                    "Information",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  ListTile(
                    dense: true,
                    // tileColor: Colors.amber,
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    // leading: Icon(Icons.edit_document),
                    title: Text("Edit Profile"),
                    onTap: () {},
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(Icons.person),
                    title: Text("Username"),
                    onTap: () {},
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    // tileColor: Colors.amber,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(Icons.mail_outline),
                    title: Text("E-mail"),
                    onTap: () {},
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(Icons.lock_outline_rounded),
                    title: Text("Password"),
                    onTap: () {},
                  ),
                  Divider(),
                  Text(
                    "Preferences",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  ListTile(
                      // tileColor: Colors.amber,
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(Icons.notifications_none_outlined),
                      title: Text(
                        "Notification",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(Icons.language),
                      title: Text(
                        "Language",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  ListTile(
                      contentPadding: EdgeInsets.all(0),
                      // tileColor: Colors.amber,
                      dense: true,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(Icons.push_pin_outlined),
                      title: Text(
                        "Shortcuts",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  ListTile(
                      contentPadding: EdgeInsets.all(0),
                      dense: true,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(Icons.mode_night_outlined),
                      title: Text(
                        "Theme",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  Divider(),
                  Text(
                    "Account",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  ListTile(
                      // tileColor: Colors.amber,
                      contentPadding: EdgeInsets.all(0),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(Icons.add),
                      title: Text("Add Account",
                          style: TextStyle(fontWeight: FontWeight.w300))),
                  ListTile(
                      contentPadding: EdgeInsets.all(0),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(Icons.swap_horiz),
                      title: Text("Switch Account",
                          style: TextStyle(fontWeight: FontWeight.w300))),
                  ListTile(
                      contentPadding: EdgeInsets.all(0),
                      // tileColor: Colors.amber,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Icon(Icons.logout_outlined),
                      title: Text(
                        "Log Out",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                ],
              ),
            )),
        body: Container(
          margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Container(
                    color: Colors.blue[400],
                    width: 300,
                    height: 100,
                    child: Row(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 140,
                            child: ListTile(
                              dense: true,
                              leading: Icon(
                                Icons.wallet,
                                color: Colors.white,
                              ),
                              title: Text(
                                "My Wallet",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("200",
                                  style: TextStyle(color: Colors.grey[300])),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                        ),
                        Center(
                          child: SizedBox(
                            width: 140,
                            child: ListTile(
                              dense: true,
                              leading: Icon(
                                Icons.attach_money_sharp,
                                color: Colors.white,
                              ),
                              title: Text(
                                "My Coins",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("4,345,67",
                                  style: TextStyle(color: Colors.grey[300])),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Center(
                child: ListTile(
                  leading: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  trailing: Text("View More ->"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryColumn(Icons.sunny, "All"),
                  _buildCategoryColumn(Icons.trending_up_rounded, "Fashion"),
                  _buildCategoryColumn(Icons.laptop, "Electronic"),
                  _buildCategoryColumn(Icons.gamepad, "Game"),

                  // Container(
                  //   child: Column(
                  //     children: [
                  //       CircleAvatar(
                  //         maxRadius: 25,
                  //         backgroundColor: Colors.blue[400],
                  //         child: Icon(Icons.music_note,
                  //             color: Colors.white),
                  //       ),
                  //       Text("Music")
                  //     ],
                  //   ),
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.trending_up_rounded,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Fashion")
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.chair_rounded,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Furniture")
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.tv, color: Colors.white),
                  //           ),
                  //           Text("Electronic")
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.electric_bike,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Vehicle")
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child:
                  //                 Icon(Icons.gamepad, color: Colors.white),
                  //           ),
                  //           Text("Game")
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.devices_other_rounded,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Other")
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryColumn(Icons.sunny, "All"),
                  _buildCategoryColumn(Icons.trending_up_rounded, "Fashion"),
                  _buildCategoryColumn(Icons.laptop, "Electronic"),
                  _buildCategoryColumn(Icons.gamepad, "Game"),

                  // Container(
                  //   child: Column(
                  //     children: [
                  //       CircleAvatar(
                  //         maxRadius: 25,
                  //         backgroundColor: Colors.blue[400],
                  //         child: Icon(Icons.music_note,
                  //             color: Colors.white),
                  //       ),
                  //       Text("Music")
                  //     ],
                  //   ),
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.trending_up_rounded,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Fashion")
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.chair_rounded,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Furniture")
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.tv, color: Colors.white),
                  //           ),
                  //           Text("Electronic")
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.electric_bike,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Vehicle")
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child:
                  //                 Icon(Icons.gamepad, color: Colors.white),
                  //           ),
                  //           Text("Game")
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       child: Column(
                  //         children: [
                  //           CircleAvatar(
                  //             maxRadius: 25,
                  //             backgroundColor: Colors.blue[400],
                  //             child: Icon(Icons.devices_other_rounded,
                  //                 color: Colors.white),
                  //           ),
                  //           Text("Other")
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              Center(
                child: ListTile(
                  leading: Text(
                    "Recommended ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  trailing: Text("Explore Now ->"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeedScreen()));
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/images/shoe.avif")),
                      ),
                    ),
                    Text(
                      "Shoes",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    Text("₹ 2000.0")
                  ]),
                  Column(children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset("assets/images/chair.jpeg")),
                    ),
                    Text(
                      "Chair",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    Text("₹ 200.0")
                  ]),
                  Column(children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset("assets/images/guitar.jpeg")),
                    ),
                    Text(
                      "Guitar",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    Text("₹ 2000.0")
                  ]),
                ],
              )
            ],
          ),
        ));
  }

  Column _buildCategoryColumn(IconData icon, String title) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 25,
          backgroundColor: Colors.blue[400],
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Text(title)
      ],
    );
  }
}

// Widget homeBar() {
//   int myIndex = 0;
//   return Scaffold(

//   );
// }

Widget searchBox() {
  return SizedBox(
    height: 32,
    width: 245,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8.0),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(minHeight: 10, minWidth: 25),
        border: InputBorder.none,
        hintText: 'Product,Store,Etc',
        hintStyle: TextStyle(color: Colors.grey[400]),
      )),
    ),
  );
}
