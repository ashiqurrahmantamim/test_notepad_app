import 'package:flutter/material.dart';
import 'package:notepad_app/Pages/pages.dart';
import 'package:notepad_app/Utils/utils.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List<Widget> pages = [NotePage(), FavoritePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(AllIcons.addIcon),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: AllColors.brownColor,
        unselectedItemColor: AllColors.geryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(AllIcons.noteIcon),
            label: 'Note Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(AllIcons.favoriteIcon),
            label: 'Favourite Page',
          ),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
