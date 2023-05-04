



import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("About",style: TextStyle(color: Colors.grey,fontSize: 12),),
            SizedBox(width: 10,),
            Text("Accessibility",style: TextStyle(color: Colors.grey,fontSize: 12),),
            SizedBox(width: 10,),
            Text("Help Center",style: TextStyle(color: Colors.grey,fontSize: 12),)
          ],
        ),
        SizedBox(height: 10,),
        _footerTextWidget(text: "Privacy & Terms",text1: "Ad Choices"),
        SizedBox(height: 10),
        _footerTextWidget(text: "Advertising",text1: "Business Services"),
        SizedBox(height: 10),
        _footerTextWidget(text: "Get the LinkedIn app",text1: "More"),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 20,
              width: 60,
              child: Image.asset("assets/LinkedIn-logo.png",fit: BoxFit.cover,),
            ),
            SizedBox(width: 5,),
            Text("LinkedIn Corporation © 2023",style: TextStyle(color: Colors.grey,fontSize: 12),)
          ],
        )
      ],
    );
  }

  _footerTextWidget({String? text,text1}){
    return Row(
      children: [
        Text("$text",style: TextStyle(color: Colors.grey,fontSize: 12),),
        SizedBox(width: 10,),
        Text("$text1",style: TextStyle(color: Colors.grey,fontSize: 12),),
      ],
    );
  }
}
