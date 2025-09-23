import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app2/cubits/add_note_cubit/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());
}
