part of 'notes_cubit_cubit.dart'; //هعمل كيوبت انه يلود ال كل النوتس ويديها لل ليسا فيو تعرضها

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {}
