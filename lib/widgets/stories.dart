import 'package:flutter/material.dart';
import 'package:ui/widgets/widgets.dart';
import '../model/models.dart';

class Stories extends StatelessWidget {
  const Stories({super.key, required this.currentUser, required this.stories});

  final User currentUser;
  final List<Story> stories;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        color: Colors.white,
        height: 170.0,
        child: ListView.builder(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: StoryCard(isAddStory: true, currentUser: currentUser),
                );
              }
              final Story story = stories[index - 1];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: StoryCard(story: story),
              );
            }),
      ),
    );
  }
}
