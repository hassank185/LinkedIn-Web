

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreatePostItemRowWidget extends StatefulWidget {
  const CreatePostItemRowWidget({Key? key}) : super(key: key);

  @override
  _CreatePostItemRowWidgetState createState() => _CreatePostItemRowWidgetState();
}

class _CreatePostItemRowWidgetState extends State<CreatePostItemRowWidget> {
  int _hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 0),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: Icons.image,text: "Photos", isHovered: _hoveredIndex == 0,color: Colors.blue),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 1),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: FontAwesomeIcons.youtube,text: "Video", isHovered: _hoveredIndex == 1,color: Colors.green),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 2),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: Icons.calendar_month,text: "Event", isHovered: _hoveredIndex == 2,color: Colors.deepPurpleAccent),
          ),
          MouseRegion(    cursor: SystemMouseCursors.click,

            onEnter: (_) => setState(() => _hoveredIndex = 3),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: Icons.article,text: "Write Article", isHovered: _hoveredIndex == 3,color: Colors.brown),
          ),
        ],
      ),
    );
  }

  _iconWithText({IconData? icon, String? text, required bool isHovered,Color? color}){
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        color: isHovered ? Colors.grey[200] : Colors.white,),
      child: Row(
        children: [
          Icon(icon,size: 23,color:color),
          SizedBox(width: 10,),
          Text("$text",style: TextStyle(color:  Colors.grey ,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
