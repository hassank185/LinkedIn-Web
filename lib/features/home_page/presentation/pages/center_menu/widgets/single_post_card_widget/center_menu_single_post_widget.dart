import 'package:flutter/material.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/data/data.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/widgets/post_card_widget.dart';


class CenterMenuSinglePostWidget extends StatefulWidget {
  const CenterMenuSinglePostWidget({Key? key}) : super(key: key);

  @override
  State<CenterMenuSinglePostWidget> createState() => _CenterMenuSinglePostWidgetState();
}

class _CenterMenuSinglePostWidgetState extends State<CenterMenuSinglePostWidget> {

  List<PostEntity> postData = PostListClass.postData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,itemCount: postData.length,itemBuilder: (context, index) {
      final post = postData[index];
      return PostCardWidget(
        post: post,
      );
    });
  }
}
