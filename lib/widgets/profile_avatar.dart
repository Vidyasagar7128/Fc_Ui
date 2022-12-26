import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
