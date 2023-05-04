

import 'package:flutter/material.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/right_menu/widgets/single_company_follow_widget.dart';

class AddToYourFeedWidget extends StatelessWidget {
  const AddToYourFeedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add to your feed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38),),
                  Icon(Icons.feedback_outlined),
                ],
              ),

              SizedBox(height: 15,),
              SingleCompanyFollowWidget(text: "ANZ OILFIELD ",text1: "Company • Oil & Energy",),
              SizedBox(height: 15,),
              SingleCompanyFollowWidget(text: "Android Developers",text1: "Company • Computer Software",),
              SizedBox(height: 15,),
              SingleCompanyFollowWidget(text:" Suhaib Salman",text1: "Flutter 🚀| Dart 🎯| Firebase🔥",),
              SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("View all recommendation"),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward,size: 18,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
