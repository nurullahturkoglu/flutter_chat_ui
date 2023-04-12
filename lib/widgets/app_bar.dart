import 'package:flutter/material.dart';

AppBar newAppBar(BuildContext context) {
  return AppBar(
    title: const Text('Flutter Chat App'),
    backgroundColor: Theme.of(context).primaryColor,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.menu,
        size: 30,
      ),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
      )
    ],
  );
}
