



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linked_in_web/features/global/theme/theme.dart';

import '../../../../../provider/scroll_pixel/scroll_pixel_cubit.dart';

class LeftSideRecentCardWidget extends StatelessWidget {
  const LeftSideRecentCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.of<ScrollPixelCubit>(context).getCurrentPixels > 350? SizedBox():Container(

      width: 220,
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
                      Expanded(
                          child: Text("KDnuggets Data Science & M...",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Groups",style: TextStyle(fontSize: 12,color: linkedInBlue,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.groups),
                      SizedBox(width: 10,),
                      Expanded(
                          child: Text("KDnuggets Data Science & M...",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12))),
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

            Text("Discover more",style: TextStyle(fontWeight: FontWeight.bold),)
            ,SizedBox(height: 10,),
          ],
        )
      ),
    );
  }
}
