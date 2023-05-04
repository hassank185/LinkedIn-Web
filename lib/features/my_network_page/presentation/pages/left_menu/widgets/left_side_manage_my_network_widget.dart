import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linked_in_web/features/global/theme/theme.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/right_menu/widgets/footer_widget.dart';

class LeftSideManageMyNetworkWidget extends StatelessWidget {
  const LeftSideManageMyNetworkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Manage my network",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
SizedBox(height: 15,),
                  _rowWidget(
                      iconData: Icons.group, text: "Connections", text1: "1,243"),
                  SizedBox(
                    height: 15,
                  ),
                  _rowWidget(
                      iconData: Icons.contact_phone, text: "Contact", text1: "81"),
                  SizedBox(
                    height: 15,
                  ),
                  _rowWidget(
                      iconData: Icons.person, text: "Following & Followers",text1: ""),
                  SizedBox(
                    height: 15,
                  ),
                  _rowWidget(
                      iconData: Icons.groups, text: "Groups", text1: "11"),
                  SizedBox(
                    height: 15,
                  ),
                  _rowWidget(
                      iconData: Icons.calendar_month, text: "Events",text1: ""),
                  SizedBox(
                    height: 15,
                  ),
                  _rowWidget(
                      iconData: Icons.article, text: "Pages", text1: "91"),
                  SizedBox(
                    height: 15,
                  ),
                  _rowWidget(
                      iconData: Icons.newspaper, text: "Newsletters", text1: "42"),
                  SizedBox(
                    height: 15,
                  ),
                  _rowWidget(
                      iconData: FontAwesomeIcons.hashtag, text: "Hashtags", text1: "7"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text("Show less",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w600),),
                      SizedBox(width: 8,),
                      Icon(Icons.keyboard_arrow_up_sharp,size: 27,color: Colors.grey,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(thickness: 1,),
            Container(
              child: Image.asset("assets/see_ho_is_hiring.png"),
            ),
            SizedBox(height: 15,),
            Text("Add personal contacts",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("We’ll periodically import and store your contacts to help you and others connect. You choose who to connect to and who to invite.",style: TextStyle(fontSize: 12,color: Colors.grey,),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
padding: EdgeInsets.symmetric(vertical: 6,horizontal: 8),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Your email address",
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 30,

              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: linkedInBlue),
              ),
              child: Text("Continue",style: TextStyle(color: linkedInBlue,fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 10,),
            Text("More options",style: TextStyle(color: Colors.grey,fontSize: 15),),
            SizedBox(height: 15,),
            Divider(thickness: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 15),
              child: FooterWidget(),
            ),
          ],
        ),
      ),
    );
  }

  _rowWidget({IconData? iconData, String? text, text1}) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.grey,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "$text",
          style: TextStyle(color: Colors.grey,fontSize: 17),
        ),
        Spacer(),
        Text("$text1",style: TextStyle(color: Colors.grey,fontSize: 17),)
        
      ],
    );
  }
}
