// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../Models/profile.dart';
import '../../Views/toDoInterface.dart';

class ProfilePage extends StatelessWidget {
  final int index;
  final List<Person> listOfPeople;

  const ProfilePage(
      {super.key, required this.index, required this.listOfPeople});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 80,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 27,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  height: 120,
                  width: 350,
                  child: Image.asset('lib/src/profile.png'),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                listOfPeople.elementAt(index).name,
              ),
            ),
            Text(
              "${listOfPeople.elementAt(index).email}",
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
                            Icons.person_4_outlined,
                            size: 24,
                          ),
                          SizedBox(width: 20),
                          Text(
                            listOfPeople.elementAt(index).username,
                          ),
                        ]),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            size: 24,
                          ),
                          SizedBox(width: 20),
                          Text(
                            listOfPeople.elementAt(index).phone,
                          ),
                        ]),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.location_city,
                            size: 24,
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              listOfPeople.elementAt(index).address.fullAddress,
                              overflow: TextOverflow.fade,
                              maxLines: 3,
                            ),
                          ),
                        ]),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.web_stories,
                            size: 18,
                          ),
                          SizedBox(width: 20),
                          Text(
                            ' ${listOfPeople.elementAt(index).website}',
                          ),
                        ]),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.email_outlined,
                            size: 24,
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              listOfPeople.elementAt(index).company.fullCompany,
                              maxLines: 3,
                            ),
                          ),
                        ]),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.share_outlined,
                            size: 24,
                          ),
                          SizedBox(width: 20),
                          const Text(
                            'Share This Profile',
                          ),
                        ]),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.help_outline,
                            size: 24,
                          ),
                          SizedBox(width: 20),
                          const Text(
                            'Help',
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ToDoInterface(
                              index: index,
                              toDos: listOfPeople.elementAt(index).todos),
                        ),
                      );
                    },
                    child: Text(
                      'To Do List',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
