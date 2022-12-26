import 'package:flutter/material.dart';
import 'package:ui/data/data.dart';
import 'package:ui/model/models.dart';

import '../widgets/widgets.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key, required this.trackingScrollController});
  final ScrollController trackingScrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.white,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 600.0,
          child: CustomScrollView(
            controller: trackingScrollController,
            slivers: [
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
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
