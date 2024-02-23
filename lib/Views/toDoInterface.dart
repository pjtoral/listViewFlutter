// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:profile_app_2/Models/profile.dart';

class ToDoInterface extends StatelessWidget {
  final int index;
  final List<Todo> toDos;

  const ToDoInterface({super.key, required this.index, required this.toDos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do"),
      ),
      body: ListView.builder(
        itemCount: toDos.length,
        itemBuilder: ((context, index) {
          return Column(
            children: <Widget>[
              const Divider(),
              ListTile(
                title: Text(
                  toDos.elementAt(index).title,
                ),
                leading: const Icon(
                  Icons.check_box_outline_blank,
                  size: 30.0,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
