import 'package:flutter/material.dart';
import 'package:ui/config/palette.dart';

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.videocam),
      label: const Text('Create\nRoom'),
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        foregroundColor: Palette.facebookBlue,
        side: const BorderSide(
          width: 3.0,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
