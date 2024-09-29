import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linked_in_web/features/global/theme/theme.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/home_page.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/left_menu/widgets/left_side_recent_card_sticky_widget.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/right_menu/widgets/see_ho_is_hiring_sticky_widget.dart';
import 'package:linked_in_web/features/jobs_page/presentation/pages/jobs_page.dart';
import 'package:linked_in_web/features/messageing_page/presentation/pages/messaging_page.dart';
import 'package:linked_in_web/features/my_network_page/presentation/pages/my_network_page.dart';
import 'package:linked_in_web/features/navbar/nav_bar.dart';
import 'package:linked_in_web/features/notification_page/presentation/pages/notification_page.dart';

import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../provider/scroll_pixel/scroll_pixel_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  ScrollController _scrollController = ScrollController();

  double _scrollPixel = 0.0;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= 50) {
        setState(() {
          _scrollPixel = _scrollController.position.pixels;
          BlocProvider.of<ScrollPixelCubit>(context).setCurrentPixel =
              _scrollPixel;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Widget selectedPage;

    switch (_selectedIndex) {
      case 0:
        selectedPage = HomePage();
        break;
      case 1:
        selectedPage = MyNetWorkPage();
        break;
      case 2:
        selectedPage = JobsPage();
        break;
      case 3:
        selectedPage = MessagingPage();
        break;
      case 4:
        selectedPage = NotificationPage();
        break;
      default:
        selectedPage = HomePage();
    }

    return Scaffold(
      backgroundColor: bodyColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                StickyHeader(
                  controller: _scrollController,
                  header: NavBarWidget(
                    onNavItemTapped: _onNavItemTapped,
                    selectedIndex: _selectedIndex,
                  ),
                  content: selectedPage,
                ),
              ],
            ),
          ),

          _scrollPixel > 350?Positioned(
            left: 145,
            top: 60,
            child: Container(
              //width: 272,
              child: IgnorePointer(ignoring: false,child: LeftSideRecentCardStickyWidget()),
            ),
          ) : SizedBox(),


          if (_scrollPixel > 345) Positioned(
            right: 145,
            top: 60,
            child: Container(

              child: IgnorePointer(ignoring: false,child: SeeHoIsHiringStickyWidget()),
            ),
          ) else SizedBox(),
        ],
      ),
    );
  }
}
