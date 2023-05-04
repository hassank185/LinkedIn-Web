



import 'package:flutter/material.dart';
import 'package:linked_in_web/features/global/theme/theme.dart';

class MostLeftSideNavBarWidget extends StatelessWidget {
  const MostLeftSideNavBarWidget({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset("assets/logo.png"),
          SizedBox(width: 10,),
          Container(
            width: 280,
            height: 45,
            decoration: BoxDecoration(
              color: formFieldColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
