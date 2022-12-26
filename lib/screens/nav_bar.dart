import 'package:flutter/material.dart';
import 'package:ui/data/data.dart';
import 'package:ui/screens/orders.dart';
import 'package:ui/screens/screens.dart';
import 'package:ui/widgets/widgets.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    const Orders(),
  ];

  final List<IconData> _icons = <IconData>[
    Icons.home,
    Icons.ondemand_video,
    Icons.account_circle,
    Icons.feed,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                preferredSize: Size(size.width, 100.0),
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: _icons,
                  onTap: (index) => setState(() => _selectedIndex = index),
                  selectedIndex: _selectedIndex,
                ),
              )
            : null,
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? Container(
                padding: const EdgeInsets.only(top: 12.0),
                color: Colors.white,
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
