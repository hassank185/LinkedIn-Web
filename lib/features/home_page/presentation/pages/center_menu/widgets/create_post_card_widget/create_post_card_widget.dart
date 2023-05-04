


import 'package:flutter/material.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/center_menu/widgets/create_post_card_widget/widgets/create_post_field_widget.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/center_menu/widgets/create_post_card_widget/widgets/create_post_item_row_widget.dart';

class CreatePostCardWidget extends StatelessWidget {
  const CreatePostCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Column(
                children: [
                    CreatePostFieldWidget(),
                  SizedBox(height: 15,),
                  CreatePostItemRowWidget()
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5,left: 5),
              width: double.infinity,
              color: Colors.black12,
              height: 1,
            ),
          ),
            SizedBox(width: 5,),
            Text("Sort by:",style: TextStyle(color: Colors.grey,fontSize: 11)),
            SizedBox(width: 5,),
            Text("Top",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
            Icon(Icons.arrow_drop_down_sharp,size: 15,)
          ],
        )
      ],
    );
  }
}
