import 'package:flutter/material.dart';

class AppBarBackIcon extends StatelessWidget {
  const AppBarBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
