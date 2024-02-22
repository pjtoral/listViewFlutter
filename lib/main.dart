import 'dart:ffi';

import 'package:flutter/material.dart';
import '../Views/profileInterface.dart';
import '../Models/profile.dart';
import '../../API/api.dart';
import 'colorScheme.dart';

List<Person> listOfPeople = [];
int totalCount = 0;

void main() async {
  await fetchData();
  runApp(const MyApp());
}

Future<void> fetchData() async {
  var response = await ApiVerbs().get("users");
  var descriptions = personFromJson(response);
  for (var person in descriptions) {
    listOfPeople.add(person);
  }
  totalCount = listOfPeople.length;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void updateHomePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Background(),
      appBar: AppBar(
        backgroundColor: Background(),
        title: Center(
            child: Text(
          "List of Users",
          style: TextStyle(
              fontFamily: 'Times New Roman',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Primary()),
        )),
      ),
      body: ListView.builder(
        itemCount: totalCount,
        itemBuilder: ((context, index) {
          return Column(
            children: <Widget>[
              const Divider(),
              ListTile(
                tileColor: DarkerBackground(),
                title: Text(
                  listOfPeople.elementAt(index).name,
                  style: const TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.yellow,
                  ),
                ),
                subtitle: Text(
                  "${listOfPeople.elementAt(index).email} | ${listOfPeople.elementAt(index).phone}",
                  style: const TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w100,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(
                  Icons.person_4_outlined,
                  color: Color.fromARGB(221, 255, 255, 255),
                  size: 30.0,
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                  color: Color.fromARGB(221, 255, 255, 255),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProfilePage(index: index, listOfPeople: listOfPeople),
                    ),
                  );
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
