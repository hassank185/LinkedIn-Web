


import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          CircleAvatar(radius: 12),
          Center(
            child: Row(
              children: [
                Text("Me",style: TextStyle(fontSize: 12,color: Colors.grey),),
                Icon(Icons.arrow_drop_down,size: 19,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
