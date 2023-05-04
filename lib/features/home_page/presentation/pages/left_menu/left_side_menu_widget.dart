import 'package:flutter/material.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/left_menu/widgets/left_side_profile_widget.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/left_menu/widgets/left_side_recent_card_widget.dart';

class LeftSideMenuWidget extends StatelessWidget {
  const LeftSideMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LeftSideProfileWidget(),
        SizedBox(height: 5,),
        LeftSideRecentCardWidget()
      ],
    );

  }
}
