import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/core/manager/note/note_cubit.dart';
import 'package:noteapp/core/models/node_model.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/custem_textfield.dart';
import 'package:noteapp/Features/Add-note/presentaion/widgets/custom_button.dart';

class NoteForm extends StatefulWidget {
  NoteForm({
    super.key,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title;
  String? supTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustemTextField(
            hint: 'title',
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustemTextField(
            hint: 'content',
            maxlines: 5,
            onsaved: (value) {
              supTitle = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              DateTime date = DateTime.now();
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                if (title != null && supTitle != null) {
                  NoteModel model = NoteModel(
                    title: title!,
                    subTitle: supTitle!,
                    date: date.toString(),
                    color: 0,
                  );
                  BlocProvider.of<NoteCubit>(context).addNote(model);
                }
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
