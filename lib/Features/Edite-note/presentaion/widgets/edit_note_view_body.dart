import 'package:flutter/material.dart';

class EditNoteViewBody extends StatefulWidget {
  EditNoteViewBody({super.key, required this.controller});
  TextEditingController controller;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: MediaQuery.of(context).size.height * .8,
        child: TextField(
          controller: widget.controller,
          expands: true,
          maxLines: null,
          textAlignVertical: TextAlignVertical.top,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
