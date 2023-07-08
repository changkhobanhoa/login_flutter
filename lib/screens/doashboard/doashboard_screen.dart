import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/favorite/favorite_screen.dart';
import 'package:login/screens/home/home_screen.dart';
import 'package:login/screens/search/search_screen.dart';
import 'package:login/screens/user/user_screen.dart';

class DoashBoardScreen extends StatefulWidget {
  const DoashBoardScreen({super.key});

  @override
  State<DoashBoardScreen> createState() => _DoashBoardScreenState();
}

int currentIndex = 0;

class _DoashBoardScreenState extends State<DoashBoardScreen> {
  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final pages = [const HomeScreen(), const SearchScreen(), const FavoriteScreen(), const UserScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 100-5,
      
        child: DotNavigationBar(
          marginR: const EdgeInsets.all(4),
          margin : const EdgeInsets.all(6),
          curve:Curves.bounceInOut,
          currentIndex: currentIndex,
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          // enableFloatingNavBar: false,
          onTap: changePage,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: const Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.favorite),
              selectedColor: const Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.search),
              selectedColor: const Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: const Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}
