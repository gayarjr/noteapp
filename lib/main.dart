import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constans.dart';
import 'package:noteapp/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KnoteBox);

  runApp(const NotesApp());
}

// teeeez
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Notesview(),
    );
  }
}
