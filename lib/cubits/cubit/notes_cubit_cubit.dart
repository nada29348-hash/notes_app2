import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app2/constants.dart';
import 'package:notes_app2/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values
        .toList(); //طالما مش فيوتشر هشيللودنج مش محتاجاها وهنا السطر دا بيجبلي بيانات getter
    emit(NotesSuccess());
  }
}
