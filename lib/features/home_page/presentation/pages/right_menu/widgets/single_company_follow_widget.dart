

import 'package:flutter/material.dart';

class SingleCompanyFollowWidget extends StatelessWidget {
  final String? text,text1;
  const SingleCompanyFollowWidget({Key? key, this.text, this.text1,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(radius: 25,),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$text",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black87,fontSize: 13,overflow: TextOverflow.ellipsis),overflow: TextOverflow.ellipsis,maxLines: 2,),
            SizedBox(height: 5,),
            Text("$text1",style: TextStyle(fontSize: 12,color: Colors.grey),),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1,color: Colors.black38),
              ),
              child: Row(
                children: [
                  Icon(Icons.add,size: 18,),

                  SizedBox(width: 5,),
                  Text("Follow",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey[600]),)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
