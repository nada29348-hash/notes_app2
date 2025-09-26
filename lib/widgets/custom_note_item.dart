import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app2/models/note_model.dart';
import 'package:notes_app2/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  note.subtitle,
                  style: TextStyle(color: Color(0xffA47C38), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 25, bottom: 16),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
