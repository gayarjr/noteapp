import 'package:flutter/material.dart';
import 'package:noteapp/views/Widgets/custem_textfield.dart';
import 'package:noteapp/views/Widgets/custom_button.dart';
import 'package:noteapp/views/Widgets/note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: NoteForm(),
      ),
    );
  }
}
