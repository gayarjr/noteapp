import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/Custem_icon.dart';
import 'package:noteapp/core/manager/note/note_cubit.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/Notes_view_body.dart';
import 'package:noteapp/Features/Add-note/presentaion/add_note_buttom_sheet.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    List notes = NoteCubit().getAllNotes();

    for (var i = 0; i < notes.length; i++) {
      log(notes[i].title.toString());
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                enableDrag: true,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteButtomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Notes'),
          actions: const [
            CustemSearchIcon(icon: Icons.search),
          ],
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
