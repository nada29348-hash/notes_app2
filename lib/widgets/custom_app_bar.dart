import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
