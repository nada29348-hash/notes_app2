import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/custom_button.dart';
import 'package:notes_app2/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 50),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 15),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 50),
            CustomButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
