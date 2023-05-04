import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReactionButtonWidget extends StatefulWidget {
  const ReactionButtonWidget({Key? key}) : super(key: key);

  @override
  State<ReactionButtonWidget> createState() => _ReactionButtonWidgetState();
}

class _ReactionButtonWidgetState extends State<ReactionButtonWidget> {
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
            child: _iconWithText(icon: Icons.thumb_up_alt_rounded,text: "Like", isHovered: _hoveredIndex == 0),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 1),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: FontAwesomeIcons.comment,text: "Comment", isHovered: _hoveredIndex == 1),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 2),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: FontAwesomeIcons.repeat,text: "Repost", isHovered: _hoveredIndex == 2),
          ),
          MouseRegion(    cursor: SystemMouseCursors.click,

            onEnter: (_) => setState(() => _hoveredIndex = 3),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: FontAwesomeIcons.telegram,text: "Send", isHovered: _hoveredIndex == 3),
          ),
        ],
      ),
    );
  }

  _iconWithText({IconData? icon, String? text, required bool isHovered}){
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        color: isHovered ? Colors.grey[200] : Colors.white,),
      child: Row(
        children: [
          Icon(icon,size: 23,color: Colors.grey ),
          SizedBox(width: 10,),
          Text("$text",style: TextStyle(color:  Colors.grey ,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}