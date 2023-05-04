



import 'package:flutter/material.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/right_menu/widgets/add_to_your_feed_widget.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/right_menu/widgets/see_ho_is_hiring_widget.dart';

class RightSideMenuWidget extends StatelessWidget {
  const RightSideMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddToYourFeedWidget(),
        SizedBox(height: 10,),
        SeeHoIsHiringWidget()
      ],
    );
  }
}
