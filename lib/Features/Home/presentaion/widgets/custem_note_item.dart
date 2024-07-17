import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/core/manager/note/note_cubit.dart';
import 'package:noteapp/core/models/node_model.dart';
import 'package:noteapp/Features/Edite-note/presentaion/edit_new_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.model});
  final NoteModel model;
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.parse(model.date);
    String hourformate = DateFormat('hh:mm a').format(dateTime);
    String dateformate = DateFormat('dd/MM/yy').format(dateTime);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(
                model: model,
              );
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
                model.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                model.subTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  model.delete();
                  BlocProvider.of<NoteCubit>(context).getAllNotes();
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    hourformate,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  Text(
                    dateformate,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
