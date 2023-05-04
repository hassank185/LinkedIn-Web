import 'package:flutter/material.dart';

class ReactionCounterWidget extends StatelessWidget {
  const ReactionCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightBlueAccent),
              child: Image.asset("assets/like_icon 1.png"),
            ),
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.greenAccent),
              child: Image.asset("assets/like_icon 2.png"),
            ),
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.yellowAccent),
              child: Image.asset("assets/like_icon 3.png"),
            ),
            SizedBox(width: 10,),
            Text("4.9k",style: TextStyle(color: Colors.grey,fontSize: 12),),
            Spacer(),
            Text("10k comments",style: TextStyle(color: Colors.grey,fontSize: 12),),
            SizedBox(width: 5,),
            Text("50 repost",style: TextStyle(color: Colors.grey,fontSize: 12),),
          ],
        ),

      ],
    );
  }
}