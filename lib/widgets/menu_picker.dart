import 'package:flutter/material.dart';

class MenuPicker extends StatefulWidget {
  const MenuPicker({super.key});

  @override
  State<MenuPicker> createState() => _MenuPickerState();
}

class _MenuPickerState extends State<MenuPicker> {
  List<String> menuItems = ['Messages', 'Online', 'Groups', 'Request'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                menuItems[index],
                style: TextStyle(
                  color: selectedIndex == index ? Colors.white : Colors.white60,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
        itemCount: menuItems.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
