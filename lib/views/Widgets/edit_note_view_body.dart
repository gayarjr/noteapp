import 'package:flutter/material.dart';
import 'package:noteapp/views/Widgets/custem_App_Bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            title: 'Edit note',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
