


import 'package:flutter/material.dart';

class CelebrationWidget extends StatelessWidget {
  const CelebrationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 650,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Celebrations",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  Text("See all",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w600),)
                ],
              ),
              SizedBox(height: 10,),
              Text("Job changes, Birthdays, Work anniversaries",style: TextStyle(fontSize: 12,color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}
