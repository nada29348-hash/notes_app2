import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 15),
          CustomTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
