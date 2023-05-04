





import 'package:flutter/material.dart';

class MostRightSideNavBarWidget extends StatelessWidget {
  const MostRightSideNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Column(
            children: [
              Icon(Icons.grid_on),
              Row(
                children: [
                  Text("For Business",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  Icon(Icons.arrow_drop_down_sharp),


                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10,),
        Text("Try Premium for \n free",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.brown,decoration: TextDecoration.underline,),)
      ],
    );
  }
}
