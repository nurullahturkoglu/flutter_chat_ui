import 'package:chatapp/widgets/home_messages.dart';
import 'package:chatapp/widgets/menu_picker.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/contacts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: newAppBar(context),
      body: Column(
        children: [
          const MenuPicker(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: const [
                  Contacts(),
                  HomeMessages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
