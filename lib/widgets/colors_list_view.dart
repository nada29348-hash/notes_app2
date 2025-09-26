import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isPicked, required this.color});
  final bool isPicked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 36,
            child: CircleAvatar(backgroundColor: color, radius: 32),
          )
        : CircleAvatar(radius: 36, backgroundColor: color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentItem = 0;
  List<Color> colors = [
    Color(0xffBF1A2F),
    Color(0xffF00699),
    Color(0xff454E9E),
    Color(0xff018E42),
    Color(0xffF7D002),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentItem = index;
                setState(() {});
              },
              child: ColorItem(
                isPicked: currentItem == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
