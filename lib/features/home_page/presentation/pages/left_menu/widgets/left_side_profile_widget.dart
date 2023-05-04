


import 'package:flutter/material.dart';

class LeftSideProfileWidget extends StatefulWidget {
  const LeftSideProfileWidget({Key? key}) : super(key: key);

  @override
  _LeftSideProfileWidgetState createState() => _LeftSideProfileWidgetState();
}

class _LeftSideProfileWidgetState extends State<LeftSideProfileWidget> {
  bool _isHoveringName = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 345,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
            ),
            Positioned(
              top: 110,
              right: 10,
              left: 10,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    // handle name click event
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (event) {
                      setState(() {
                        _isHoveringName = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        _isHoveringName = false;
                      });
                    },
                    child: Text(
                      "Muhammad Hassan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: _isHoveringName
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 10,
              left: 10,
              child: CircleAvatar(
                radius: 35,
              ),
            ),
            Column(

              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 140),
                      Text(
                        "Android + Flutter Full-Stack Dev + Firebase Experienced | Youtuber |",
                        style: TextStyle(
                          fontSize: 12,
                          wordSpacing: 3,
                          color: Colors.grey[500],
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Analytics & tools",
                          ),
                          SizedBox(height: 5),
                          Text(
                            "4k post impressions",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Access exclusive tools & insights",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.yellow[700],
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Try Premium for free",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bookmark_sharp,
                        color: Colors.grey,
                        size: 18,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "My Items",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
