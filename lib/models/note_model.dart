import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  //generate type adapter
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color; //   لو عايزه اخزن الحاجه هنا ك اوبجيكت يبقي لازم اكريتلها تايب ادابتور يعني مثلا لو اللون عايزه اقول انه من نوع color يبقي لازم انشأ له تايب ادابتور
  //فعشان اريح نفسي من دا خليته اي نوع primitive
  NoteModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}
