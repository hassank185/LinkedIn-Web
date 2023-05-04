



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:linked_in_web/features/global/theme/theme.dart';
import 'package:linked_in_web/features/navbar/widgets/most_left_side_nav_bar_widget.dart';
import 'package:linked_in_web/features/navbar/widgets/most_right_side_nav_bar_widget.dart';
import 'package:linked_in_web/features/navbar/widgets/nav_bar_item_list_widget.dart';
import 'package:linked_in_web/features/navbar/widgets/profile_widget.dart';

class NavBarWidget extends StatelessWidget {
  final Function(int)? onNavItemTapped;
  final int? selectedIndex;

  const NavBarWidget({Key? key, this.onNavItemTapped, this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 100),
      height: 50,
      color: commonColor,
      child: Row(
        children: [
          MostLeftSideNavBarWidget(),
          SizedBox(width: 140,),
        NavBarItemListWidget(onNavItemTapped: onNavItemTapped,selectedIndex: selectedIndex),
          SizedBox(width: 10,),
          ProfileWidget(),
          SizedBox(width: 10,),
          Container(
            height: double.infinity,
            color: Colors.grey[300],
            width: 1,
          ),
          SizedBox(width: 10,),
          MostRightSideNavBarWidget()
        ],
      ),
    );
  }
}
