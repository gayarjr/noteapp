import 'package:flutter/material.dart';
import 'package:noteapp/Features/Edite-note/presentaion/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: EditNoteViewBody(),
    );
  }
}
