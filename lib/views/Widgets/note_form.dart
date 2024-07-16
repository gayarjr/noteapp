import 'package:flutter/material.dart';
import 'package:noteapp/views/Widgets/custem_textfield.dart';
import 'package:noteapp/views/Widgets/custom_button.dart';

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
            onsaved: (p0) {
              title = p0;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustemTextField(
            hint: 'content',
            maxlines: 5,
            onsaved: (p0) {
              supTitle = p0;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
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
