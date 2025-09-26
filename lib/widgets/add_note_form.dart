import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app2/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app2/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app2/models/note_model.dart';
import 'package:notes_app2/widgets/custom_button.dart';
import 'package:notes_app2/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled; //طالما دي متغيرة هتكون stateful
  String? title, subtitle; //الي اليوزر هيدخلهم

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 15),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 50),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            //عشان بعمل ريبلد لل بوتون
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formatedCurrentDate = DateFormat(
                      'dd-mm-yyyy',
                    ).format(currentDate);
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formatedCurrentDate,
                      color: Colors.blue.value,
                    );

                    // Trigger cubit
                    //BlocProvider.of<AddNoteCubit>(context).addNote(noteModel); ==
                    context.read<AddNoteCubit>().addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
