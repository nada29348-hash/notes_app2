import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Flutter tips',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
            ),
            subtitle: Text(
              'Build your career with nada',
              style: TextStyle(color: Color(0xffA47C38), fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 24),
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 25, bottom: 16),
            child: Text(
              'Sept 22,2025',
              style: TextStyle(color: Color(0xffA47C38), fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
