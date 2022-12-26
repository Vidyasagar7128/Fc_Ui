import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../model/models.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
    this.isAddStory = false,
    this.story,
    this.currentUser,
  }) : super(key: key);

  final bool? isAddStory;
  final Story? story;
  final User? currentUser;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            height: double.infinity,
            width: 110.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  isAddStory == true ? currentUser!.imageUrl : story!.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 6.0,
          top: 6.0,
          child: isAddStory == true
              ? CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    color: Palette.facebookBlue,
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                )
              : CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(story!.user.imageUrl),
                ),
        ),
      ],
    );
  }
}
