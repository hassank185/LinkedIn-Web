



import 'package:flutter/material.dart';
import 'package:linked_in_web/features/global/theme/theme.dart';

class LeftSideRecentCardStickyWidget extends StatelessWidget {
  const LeftSideRecentCardStickyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 225,
      child: Card(
        color: linkedInWhiteFFFFFF,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recent",style: TextStyle(fontSize: 12),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.groups),
                      SizedBox(width: 10,),
                      Expanded(child: Text("KDnuggets Data Science & M...",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Groups",style: TextStyle(fontSize: 12,color: linkedInBlue,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.groups),
                      SizedBox(width: 10,),
                      Expanded(child: Text("KDnuggets Data Science & M...",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(overflow: TextOverflow.ellipsis,fontSize: 12)))
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Events",style: TextStyle(color: linkedInBlue,fontWeight: FontWeight.w500,fontSize: 12),),
                      Icon(Icons.add,size: 19,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Followed Hashtags",style: TextStyle(color: linkedInBlue,fontWeight: FontWeight.w500,fontSize: 12),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black12,
            ),
            SizedBox(height: 10,),

            Text("Discover more",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
            ,SizedBox(height: 10,),
          ],
        )
      ),
    );
  }
}
