import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/notes_list_view.dart';
import 'package:noteapp/core/manager/note/note_cubit.dart';

class ListOfNotesStateManagement extends StatelessWidget {
  const ListOfNotesStateManagement({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        if (state is GetAllNoteSuccess) {
          return NotesListView(
            ListofNoteModel: state.notes,
          );
        } else {
          return const NotesListView(
            ListofNoteModel: [],
          );
        }
      },
    );
  }
}
