



import 'package:flutter/material.dart';

class PendingInvitationWidget extends StatelessWidget {
  const PendingInvitationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("No pending invitations",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  Text("Manage",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w600),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
