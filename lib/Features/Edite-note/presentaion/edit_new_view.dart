import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Features/Edite-note/presentaion/widgets/edit_note_view_body.dart';
import 'package:noteapp/core/manager/note/note_cubit.dart';
import 'package:noteapp/core/models/node_model.dart';

class EditNoteView extends StatefulWidget {
  EditNoteView({super.key, required this.model});
  final NoteModel model;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = widget.model.subTitle;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model.title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                if (controller.text != widget.model.subTitle) {
                  log('edited');
                  NoteModel newModel = NoteModel(
                    title: widget.model.title,
                    subTitle: controller.text,
                    date: DateTime.now().toString(),
                    color: 1,
                  );
                  BlocProvider.of<NoteCubit>(context).addNote(newModel);

                  widget.model.delete();

                  BlocProvider.of<NoteCubit>(context).getAllNotes();
                } else {
                  log('not edited');
                }

                Navigator.pop(context);
              },
              icon: const Text(
                'Done',
                style: TextStyle(color: Colors.orange),
              ))
        ],
      ),
      body: EditNoteViewBody(
        controller: controller,
      ),
    );
  }
}
