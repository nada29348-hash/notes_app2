import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app2/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app2/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app2/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //provide cubit
      //حطيته هنا لانه ملوش داعي انه يكون في ماتريل اب لان انا هاكسس كيوبت هنا وبس فكدا احسن عشان مستهلكش ريسورسس كتير
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteStates>(
        //هنا ممكن استخدم بلوك ليسنر عشان مش هعمل ريبلد لل شيت هعمل بس للبوتون
        //integrate cubit
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {
            print('Failed ${state.errorMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading
                ? true
                : false, //هنا بشوف لو لود بخليه ميعرفش يكتب في تيكست فيلد
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(
                  context,
                ).viewInsets.bottom, //هنل في بادنج من تحت ارتفاعه نفس الكيبورد
              ),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
