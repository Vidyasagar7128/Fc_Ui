import 'package:flutter/material.dart';
import 'package:ui/screens/screens.dart';
import 'package:ui/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: HomeScreenMobile(trackingScrollController: _controller),
          desktop: HomeScreenDesktop(trackingScrollController: _controller),
        ),
      ),
    );
  }
}
