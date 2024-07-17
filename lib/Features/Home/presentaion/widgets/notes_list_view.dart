import 'package:flutter/material.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/custem_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.ListofNoteModel});
  final List ListofNoteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView.builder(
          itemCount: ListofNoteModel.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(
                model: ListofNoteModel[index],
              ),
            );
          }),
    );
  }
}
