import 'package:flutter/material.dart';
import 'package:noteapp/core/manager/note/note_cubit.dart';
import 'package:noteapp/core/models/node_model.dart';
import 'package:noteapp/Features/Edite-note/presentaion/edit_new_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCD7D),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                'Build your carrer with tharwat samy',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  NoteCubit().deleteNote(NoteModel(
                      title: 'first note',
                      subTitle: '',
                      date: 'date',
                      color: 2));
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'May21,  2022',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}