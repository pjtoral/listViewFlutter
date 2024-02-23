// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:profile_app_2/Models/profile.dart';

class ToDoInterface extends StatefulWidget {
  final int index;
  final List<Todo> toDos;

  const ToDoInterface({super.key, required this.index, required this.toDos});

  @override
  ToDoInterfaceState createState() => ToDoInterfaceState();
}

class ToDoInterfaceState extends State<ToDoInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do"),
      ),
      body: ListView.builder(
        itemCount: widget.toDos.length,
        itemBuilder: ((context, index) {
          return Column(
            children: <Widget>[
              const Divider(),
              ListTile(
                  title: Text(
                    widget.toDos.elementAt(index).title,
                  ),
                  leading: Checkbox(
                      value: widget.toDos.elementAt(index).completed,
                      onChanged: (bool? value) {
                        setState(() {
                          widget.toDos.elementAt(index).completed =
                              value ?? false;
                        });
                      })),
            ],
          );
        }),
      ),
    );
  }
}
