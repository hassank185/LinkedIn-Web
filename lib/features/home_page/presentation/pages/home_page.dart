
import 'package:flutter/material.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/center_menu/center_menu_widget.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/left_menu/left_side_menu_widget.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/right_menu/right_side_menu_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LeftSideMenuWidget(),
                SizedBox(width: 15,),
                CenterBodyWidget(),
                SizedBox(width: 15,),
                RightSideMenuWidget()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
