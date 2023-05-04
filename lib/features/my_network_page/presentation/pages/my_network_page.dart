



import 'package:flutter/material.dart';

import 'center_menu/network_center_menu_widget.dart';
import 'left_menu/widgets/left_side_manage_my_network_widget.dart';

class MyNetWorkPage extends StatelessWidget {
  const MyNetWorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 15),
      child: Expanded(
        child: Column(

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LeftSideManageMyNetworkWidget(),
                SizedBox(width: 15,),
                NetWorkCenterMenuWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
