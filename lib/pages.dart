import 'package:flutter/material.dart';
import 'package:myapp/screens/info_screen.dart';
import 'package:myapp/screens/staff_screen.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        Center(
          child: InfoScreen(),
        ),
        Center(
          child: StaffScreen(),
        )
      ],
    );
  }
}
