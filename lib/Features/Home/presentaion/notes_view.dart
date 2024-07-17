import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/Custem_icon.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/state_management.dart';
import 'package:noteapp/Features/Add-note/presentaion/add_note_buttom_sheet.dart';
import 'package:noteapp/core/manager/note/note_cubit.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NoteCubit>(context).getAllNotes();
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
        body: const ListOfNotesStateManagement(),
      ),
    );
  }
}
