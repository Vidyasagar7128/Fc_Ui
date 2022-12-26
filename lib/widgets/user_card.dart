import 'package:flutter/material.dart';

import '../model/models.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.imageUrl),
          ),
          const SizedBox(width: 5.0),
          Text(user.name),
        ],
      ),
    );
  }
}
