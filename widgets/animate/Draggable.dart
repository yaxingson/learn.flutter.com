import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class User {
  final String name;
  final String avatar;
  User(this.name, this.avatar);
}

class DraggableDemo extends StatefulWidget {
  @override
  State<DraggableDemo> createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  List<User> users = [];

  @override
  initState() {
    super.initState();
    (() async {
      final dio = Dio();
      final response =
          await dio.get('https://api.github.com/users/yaxingson/followers');
      setState(() {
        response.data.forEach((user) {
          users.add(User(user['login'], user['avatar_url']));
        });
      });
    })();
  }

  @override
  Widget build(BuildContext ctx) {
    return DragTarget(
      onAccept: (data) {},
      builder: (context, candidateData, rejectedData) {
        return ListView(
          children: users.map((user) {
            return Draggable(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(user.name)
                  ],
                ),
              ),
              feedback: Opacity(
                opacity: 0.5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(user.avatar),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(user.name)
                    ],
                  ),
                ),
              ),
              onDraggableCanceled: (velocity, offset) {},
            );
          }).toList(),
        );
      },
    );
  }
}
