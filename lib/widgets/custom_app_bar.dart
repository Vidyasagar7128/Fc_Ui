import 'package:flutter/material.dart';
import 'package:ui/config/palette.dart';
import 'package:ui/screens/custom_tab_bar.dart';
import 'package:ui/widgets/widgets.dart';

import '../model/models.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.currentUser,
      required this.icons,
      required this.selectedIndex,
      required this.onTap});
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(0, 2), blurRadius: 4.0)
        ],
      ),
      child: Row(
        children: [
          const Expanded(
              child: Text(
            'Facebook',
            style: TextStyle(
                fontSize: 24.0,
                color: Palette.facebookBlue,
                fontWeight: FontWeight.bold),
          )),
          SizedBox(
            width: 600.0,
            height: double.infinity,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UserCard(user: currentUser),
              const SizedBox(width: 12.0),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.maps_ugc_outlined),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
