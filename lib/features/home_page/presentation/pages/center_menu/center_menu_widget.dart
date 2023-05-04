



import 'package:flutter/material.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/center_menu/widgets/create_post_card_widget/create_post_card_widget.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/center_menu_single_post_widget.dart';

class CenterBodyWidget extends StatelessWidget {

  const CenterBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: Column(
          children: [
            CreatePostCardWidget(),
            SizedBox(height: 10,),
            CenterMenuSinglePostWidget()
          ],
        ),
      ),
    );
  }
}
