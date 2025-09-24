import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app2/constants.dart';
import 'package:notes_app2/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app2/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel notes) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(notes);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
