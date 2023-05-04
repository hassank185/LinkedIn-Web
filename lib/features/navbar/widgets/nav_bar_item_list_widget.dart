import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBarItemListWidget extends StatefulWidget {
  final Function(int)? onNavItemTapped;
  final int? selectedIndex;

  const NavBarItemListWidget({
    Key? key,
     this.onNavItemTapped,  this.selectedIndex,
  }) : super(key: key);

  @override
  State<NavBarItemListWidget> createState() => _NavBarItemListWidgetState();
}

class _NavBarItemListWidgetState extends State<NavBarItemListWidget> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onNavItemTapped!(index);
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = index == _selectedIndex;
    final color = isSelected ? Colors.black : Colors.grey;
    final container = isSelected
        ? Container(
      height: 2,
      width: 70,
      color: Colors.black,
    )
        : Container();

    return GestureDetector(
      onTap: () => _onNavItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 23,
              child: Icon(icon, size: 21, color: color),
            ),
            SizedBox(
              width: 70,
              child: Center(
                  child: Text(label,
                      style: TextStyle(fontSize: 12, color: color))),
            ),
            SizedBox(height: 4,),
            container,
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, CupertinoIcons.house_fill, "Home"),
            SizedBox(width: 5,),
            _buildNavItem(1, FontAwesomeIcons.userGroup, "My Network"),
            SizedBox(width: 5,),
            _buildNavItem(2, FontAwesomeIcons.briefcase, "Jobs"),
            SizedBox(width: 5,),
            _buildNavItem(3, Icons.message, "Messaging"),
             SizedBox(width: 5,),
            _buildNavItem(4, Icons.notifications, "Notification"),
            SizedBox(width: 5,),
          ],
        ),
      ],
    );
  }
}
