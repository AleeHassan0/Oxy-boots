import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:oxy_boots/pages/cart_page.dart';
import 'package:oxy_boots/pages/favorite_page.dart';
import 'package:oxy_boots/pages/home_page.dart';
import 'package:oxy_boots/pages/notification_page.dart';
import 'package:oxy_boots/pages/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _HomeState();
}

class _HomeState extends State<RootPage> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  final List<Widget> _navigatinItem = [
    const Icon(CupertinoIcons.home),
    const Icon(CupertinoIcons.heart),
    const Icon(CupertinoIcons.shopping_cart),
    const Icon(CupertinoIcons.bell),
    const Icon(CupertinoIcons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: _pageIndex,
        color: Colors.black12,
        buttonBackgroundColor: Colors.black12,
        backgroundColor: Colors.transparent,
        items: _navigatinItem,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
      body: _pages[_pageIndex],
    );
  }
}
