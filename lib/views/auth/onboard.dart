import 'package:flutter/material.dart';
import 'package:healthscape/app/navigation/navigator.dart';
import 'onboard_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController? _pageController;

  int _page = 0;

  void _nextPage() {
    if (_pageController == null) return;
    if (_page < 2) {
      _pageController?.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    } else {
      AppNavigator.navigateTo(launch);
    }
  }

  void _skip() {
    if (_page < 2) {
      _page == 2;
      _pageController?.animateToPage(
        2,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 300),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _pageController,
        onPageChanged: (newPage) {
          setState(() {
            _page = newPage;
          });
        },
        children: [
          OnboardWidget(
            img: 'assets/on1.png',
            onTap: _nextPage,
            val: _page,
            skip: _skip,
          ),
          OnboardWidget(
            img: 'assets/on2.png',
            onTap: _nextPage,
            val: _page,
            skip: _skip,
          ),
          OnboardWidget(
            img: 'assets/on3.png',
            onTap: _nextPage,
            val: _page,
            skip: _skip,
          ),
        ],
      ),
    );
  }
}
