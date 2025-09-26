import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        // color: Colors.white.withOpacity(0.05),
        color: Colors.white.withAlpha(13), //نفس الي فوق
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 26)),
    );
  }
}
