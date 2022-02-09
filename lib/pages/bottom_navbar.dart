import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
   int currentIndex = 0;
    BottomNavBar({ Key? key, required this.title,  }) : super(key: key);
  
  final String title;
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void onTapTapped(int index){
    setState(() {
      widget.currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeBGColor,
      bottomNavigationBar: Container(
        height: 64,
        margin: const EdgeInsets.all(24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: BottomNavigationBar(
            
            type: BottomNavigationBarType.fixed,
            elevation: 0.0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: kBottomNavBarColor.withOpacity(0.08),
            selectedItemColor: kLightColor,
            unselectedItemColor: kLightColor.withOpacity(0.4),
            onTap: onTapTapped,
            currentIndex: widget.currentIndex,
            items: [
              buildBottomNavigationBarItem(0, "Home", "assets/icons/home.svg"),
              buildBottomNavigationBarItem(1, "Category", "assets/icons/category.svg"),
              buildBottomNavigationBarItem(2, "Search", "assets/icons/search.svg"),
              buildBottomNavigationBarItem(3, "Profile", "assets/icons/profile.svg"),
        
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
    int index,
    String title,
    String icon,
  ) {
    return BottomNavigationBarItem(
      
      icon: SvgPicture.asset(
        icon,  width: 18, height: 18, fit: BoxFit.scaleDown, color: Colors.white,
      ),
      label: title,
    );
  }
}

