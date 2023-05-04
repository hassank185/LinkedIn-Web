

import 'package:flutter/material.dart';
import 'package:linked_in_web/features/my_network_page/presentation/pages/center_menu/widgets/celebration_widget.dart';
import 'package:linked_in_web/features/my_network_page/presentation/pages/center_menu/widgets/pending_invitations_widget.dart';

class NetWorkCenterMenuWidget extends StatelessWidget {
  const NetWorkCenterMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PendingInvitationWidget(),
        SizedBox(height: 15,),
        CelebrationWidget()
      ],
    );
  }
}
