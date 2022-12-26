import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/config/palette.dart';
import 'package:ui/data/data.dart';
import 'package:ui/widgets/widgets.dart';

import '../model/models.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key, required this.trackingScrollController});

  final ScrollController trackingScrollController;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: trackingScrollController,
      slivers: [
        SliverAppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.white,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Palette.facebookBlue,
              fontSize: 23.0,
              letterSpacing: -0.8,
            ),
          ),
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.search,
              iconSize: 25,
              onPressed: () {},
            ),
            CircleButton(
              icon: Icons.account_circle_outlined,
              iconSize: 25,
              onPressed: () {},
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Stories(currentUser: currentUser, stories: stories),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final Post post = posts[index];
            return Posts(
              post: post,
            );
          }, childCount: posts.length),
        ),
      ],
    );
  }
}
