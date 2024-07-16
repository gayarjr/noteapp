import 'package:flutter/material.dart';
import 'package:noteapp/views/Widgets/custem_App_Bar.dart';
import 'package:noteapp/views/Widgets/custem_note_item.dart';
import 'package:noteapp/views/Widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
