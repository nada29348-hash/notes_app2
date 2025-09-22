import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/custom_app_bar.dart';
import 'package:notes_app2/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 60),
          CustomAppBar(),
          SizedBox(height: 20),
          CustomNoteItem(),
        ],
      ),
    );
  }
}
