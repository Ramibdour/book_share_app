import 'package:book_share_app/Screens/Discover/discover.dart';
import 'package:book_share_app/Screens/Library%20Page/library_page.dart';
import 'package:book_share_app/Screens/Profile/profile.dart';
import 'package:book_share_app/Screens/Store/store.dart';
import 'package:book_share_app/Screens/Wish%20List/wishlist.dart';
import 'package:book_share_app/constant.dart';
import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  List<Widget> pageBottomBarList = const [
    Discover(),
    LibraryPage(),
    WishList(),
    Store(),
    Profile()
  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBarPageTransition(
        builder: (context, index) => pageBottomBarList[index],
        currentIndex: selectedIndex,
        totalLength: 5,
        transitionType: TransitionType.slide,
        transitionDuration: const Duration(milliseconds: 300),
        transitionCurve: Curves.ease,
      ),
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: const Color(0xff000000).withAlpha(10),
              offset: const Offset(0, 2),
              blurRadius: 20)
        ]),
        child: BottomNavigationBar(
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            selectedItemColor: primerColor,
            selectedLabelStyle:
                TextStyle(fontFamily: 'SF', fontSize: 12, color: primerColor),
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color(0xff5F5F5F),
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'SF', fontSize: 12, color: Color(0xff5F5F5F)),
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(
                    'assets/icons/Discover.svg',
                    fit: BoxFit.none,
                    color: selectedIndex == 0
                        ? primerColor
                        : const Color(0xff5F5F5F),
                  ),
                ),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(
                    'assets/icons/Library.svg',
                    fit: BoxFit.none,
                    color: selectedIndex == 1
                        ? primerColor
                        : const Color(0xff5F5F5F),
                  ),
                ),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(
                    'assets/icons/Wishlist.svg',
                    fit: BoxFit.none,
                    color: selectedIndex == 2
                        ? primerColor
                        : const Color(0xff5F5F5F),
                  ),
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(
                    'assets/icons/Store.svg',
                    fit: BoxFit.none,
                    color: selectedIndex == 3
                        ? primerColor
                        : const Color(0xff5F5F5F),
                  ),
                ),
                label: 'Store',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(
                    'assets/icons/Profile.svg',
                    fit: BoxFit.none,
                    color: selectedIndex == 4
                        ? primerColor
                        : const Color(0xff5F5F5F),
                  ),
                ),
                label: 'Profile',
              ),
            ]),
      ),
    );
  }
}
