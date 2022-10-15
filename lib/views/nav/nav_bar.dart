import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/views/nav/appointment.dart';
import 'package:healthscape/views/nav/home.dart';

import '../../app/mixins/vibration_mixin.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> with VibrationMixin {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    //vibrate();
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<bool> onWillPop(BuildContext context) async {
    if (_selectedIndex == 0) {
      return true;
    } else {
      _onItemTapped(0);
      setState(() {});
      return false;
    }
  }

  final screens = [
    const Home(),
    const Appointment(),
    const Home(),
    const Home(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onWillPop(context),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black, width: 0.5),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color(0xffCCCCCC),
            iconSize: 20.h,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 10.h,
                  child: Icon(
                    Icons.collections_outlined,
                    size: 30.h,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 10.h,
                  child: Icon(
                    Icons.chat_bubble_outline,
                    size: 30.h,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 10.h,
                  child: Icon(
                    Icons.home_outlined,
                    size: 30.h,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 10.h,
                  child: Icon(
                    Icons.notifications_none,
                    size: 30.h,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 10.h,
                  child: Icon(
                    Icons.account_box_outlined,
                    size: 30.h,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: screens,
        ),
      ),
    );
  }
}
