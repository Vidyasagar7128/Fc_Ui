import 'package:flutter/material.dart';
import 'package:ui/config/palette.dart';
import '../model/models.dart';

class Posts extends StatelessWidget {
  final Post post;
  const Posts({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PostHeader(post: post),
          ),
          post.imageUrl.isEmpty
              ? const SizedBox.shrink()
              : const SizedBox(height: 6.0),
          post.imageUrl.isEmpty
              ? const SizedBox.shrink()
              : SizedBox(
                  child: Image.network(post.imageUrl),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: PostBottom(post: post),
          ),
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(post.user.imageUrl),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(post.user.name),
                  Row(
                    children: [
                      Text(post.timeAgo),
                      Icon(
                        Icons.public,
                        color: Colors.grey.shade600,
                        size: 15.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
              ),
            ),
          ],
        ),
        Text(post.caption),
      ],
    );
  }
}

class PostBottom extends StatelessWidget {
  const PostBottom({super.key, required this.post});

  final Post post;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Palette.facebookBlue),
              child: const Icon(
                Icons.thumb_up,
                size: 12.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 3.0),
            Expanded(child: Text('${post.likes} Likes')),
            Text('${post.comments} Comments'),
            const SizedBox(width: 3.0),
            Text('${post.shares} Shares'),
          ],
        ),
        const Divider(),
        Row(
          children: [
            BottomButtons(
              icon: Icons.thumb_up_alt_outlined,
              lable: 'Like',
              onTap: () {},
            ),
            BottomButtons(
              icon: Icons.comment_outlined,
              lable: 'Comment',
              onTap: () {},
            ),
            BottomButtons(
              icon: Icons.share_outlined,
              lable: 'Share',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class BottomButtons extends StatelessWidget {
  const BottomButtons(
      {super.key,
      required this.icon,
      required this.lable,
      required this.onTap});
  final IconData icon;
  final String lable;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 18.0,
                ),
                const SizedBox(width: 4.0),
                Text(lable),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
