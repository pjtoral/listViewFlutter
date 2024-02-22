// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../Models/profile.dart';

class ProfilePage extends StatelessWidget {
  final int index;
  final List<Person> listOfPeople;

  const ProfilePage(
      {super.key, required this.index, required this.listOfPeople});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 28, 61),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // Image centered in the stack
                SizedBox(
                  height: 120,
                  width: 350,
                  child: Image.asset('lib/src/profile.png'),
                ),
                // Close button positioned at the top-right corner
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.close, // Specify the icon you want to use
                      color: Colors
                          .white, // Change the color of the icon (optional)
                      size: 27, // Change the size of the icon (optional)
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                listOfPeople.elementAt(index).name,
                style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 35,
                    color: Colors.yellow),
              ),
            ),
            Text(
              "${listOfPeople.elementAt(index).email}",
              style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 500,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons
                                .person_4_outlined, // Specify the icon you want to use
                            color: Colors
                                .yellow, // Change the color of the icon (optional)
                            size: 24, // Change the size of the icon (optional)
                          ),
                          SizedBox(width: 20),
                          Text(
                            listOfPeople.elementAt(index).username,
                            style: TextStyle(
                                fontFamily:
                                    'Roboto', // Using Roboto font family
                                fontSize: 18, // Font size 20
                                color: Colors.white),
                          ),
                        ]),
                    Divider(
                      // Adjust the height of the line
                      thickness: 2, // Adjust the thickness of the line
                      color: Colors.grey, // Adjust the color of the line
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.phone, // Specify the icon you want to use
                            color: Colors
                                .yellow, // Change the color of the icon (optional)
                            size: 24, // Change the size of the icon (optional)
                          ),
                          SizedBox(width: 20),
                          Text(
                            listOfPeople.elementAt(index).phone,
                            style: TextStyle(
                                fontFamily:
                                    'Roboto', // Using Roboto font family
                                fontSize: 18, // Font size 20
                                color: Colors.white),
                          ),
                        ]),
                    Divider(
                      // Adjust the height of the line
                      thickness: 2, // Adjust the thickness of the line
                      color: Colors.grey, // Adjust the color of the line
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons
                                .location_city, // Specify the icon you want to use
                            color: Colors
                                .yellow, // Change the color of the icon (optional)
                            size: 24, // Change the size of the icon (optional)
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              listOfPeople.elementAt(index).address.fullAddress,
                              style: TextStyle(
                                  fontFamily:
                                      'Roboto', // Using Roboto font family
                                  fontSize: 18, // Font size 20
                                  color: Colors.white),
                              overflow: TextOverflow.fade,
                              maxLines: 3,
                            ),
                          ),
                        ]),
                    Divider(
                      // Adjust the height of the line
                      thickness: 2, // Adjust the thickness of the line
                      color: Colors.grey, // Adjust the color of the line
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons
                                .web_stories, // Specify the icon you want to use
                            color: Colors
                                .yellow, // Change the color of the icon (optional)
                            size: 18, // Change the size of the icon (optional)
                          ),
                          SizedBox(width: 20),
                          Text(
                            ' ${listOfPeople.elementAt(index).website}',
                            style: TextStyle(
                                fontFamily:
                                    'Roboto', // Using Roboto font family
                                fontSize: 18, // Font size 20
                                color: Colors.white),
                          ),
                        ]),
                    Divider(
                      // Adjust the height of the line
                      thickness: 2, // Adjust the thickness of the line
                      color: Colors.grey, // Adjust the color of the line
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons
                                .email_outlined, // Specify the icon you want to use
                            color: Colors
                                .yellow, // Change the color of the icon (optional)
                            size: 24, // Change the size of the icon (optional)
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              listOfPeople.elementAt(index).company.fullCompany,
                              style: TextStyle(
                                  fontFamily:
                                      'Roboto', // Using Roboto font family
                                  fontSize: 18, // Font size 20
                                  color: Colors.white),
                              maxLines: 3,
                            ),
                          ),
                        ]),
                    Divider(
                      // Adjust the height of the line
                      thickness: 2, // Adjust the thickness of the line
                      color: Colors.grey, // Adjust the color of the line
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons
                                .share_outlined, // Specify the icon you want to use
                            color: Colors
                                .yellow, // Change the color of the icon (optional)
                            size: 24, // Change the size of the icon (optional)
                          ),
                          SizedBox(width: 20),
                          const Text(
                            'Share This Profile',
                            style: TextStyle(
                                fontFamily:
                                    'Roboto', // Using Roboto font family
                                fontSize: 18, // Font size 20
                                color: Colors.white),
                          ),
                        ]),
                    Divider(
                      // Adjust the height of the line
                      thickness: 2, // Adjust the thickness of the line
                      color: Colors.grey, // Adjust the color of the line
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons
                                .help_outline, // Specify the icon you want to use
                            color: Colors
                                .yellow, // Change the color of the icon (optional)
                            size: 24, // Change the size of the icon (optional)
                          ),
                          SizedBox(width: 20),
                          const Text(
                            'Help',
                            style: TextStyle(
                                fontFamily:
                                    'Roboto', // Using Roboto font family
                                fontSize: 18, // Font size 20
                                color: Colors.white),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 100,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     children: <Widget>[
            //       const Text(
            //         'Sign Out',
            //         style: TextStyle(
            //             fontFamily: 'Roboto', // Using Roboto font family
            //             fontSize: 20, // Font size 20
            //             color: Colors.white),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 30)
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
