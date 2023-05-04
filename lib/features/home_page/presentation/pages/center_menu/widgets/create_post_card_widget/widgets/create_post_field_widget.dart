

import 'package:flutter/material.dart';

class CreatePostFieldWidget extends StatefulWidget {
  const CreatePostFieldWidget({Key? key}) : super(key: key);

  @override
  State<CreatePostFieldWidget> createState() => _CreatePostFieldWidgetState();
}

class _CreatePostFieldWidgetState extends State<CreatePostFieldWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               children: [
                 CircleAvatar(radius: 25,),
                 SizedBox(width: 10,),
                 Expanded(
                   child: MouseRegion(
                     cursor: SystemMouseCursors.click,
                     onEnter: (event) {
                       setState(() {
                         _isHover = true;
                       });
                     },
                     onExit: (event) {
                       setState(() {
                         _isHover = false;
                       });
                     },
                     child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 10),

                         height: 45,
                         decoration: BoxDecoration(
                             color: _isHover ? Colors.grey[200] : Colors.white,
                             borderRadius: BorderRadius.circular(30),
                             border: Border.all(width: 0.8,color: Colors.grey)
                         ),
                         child: Align(alignment: Alignment.centerLeft,child: Text("Start a Post",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14)))
                     ),
                   ),
                 )
               ],
             )
            ],
          ),
        ),
      ],
    );
  }
}


