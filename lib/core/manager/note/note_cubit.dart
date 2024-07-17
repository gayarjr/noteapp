import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constans.dart';
import 'package:noteapp/core/models/node_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  Box box = Hive.box<NoteModel>(KnoteBox);

  void addNote(NoteModel model) {
    try {
      box.add(model);
      emit(AddNoteSuccess());
      log('saved');
    } catch (e) {
      log(e.toString());

      emit(AddNoteFailed(e.toString()));
    }
  }

  void updateNote(NoteModel model) {
    try {
      box.put(model.date, model);
      emit(UpdateNoteSuccess());
    } catch (e) {
      emit(UpdateNoteFailed(e.toString()));
    }
  }

  void deleteNote(NoteModel model) {
    try {
      box.delete(model.title);
      emit(DeleteNoteSuccess());
      log('deleted');
    } catch (e) {
      log(e.toString());
      emit(DeleteNoteFailed(e.toString()));
    }
  }

  List getAllNotes() {
    List notesList = [];
    try {
      notesList = box.values.toList();
      emit(GetAllNoteSuccess(notesList));
    } catch (e) {
      emit(GetAllNoteFailed(e.toString()));
    }
    return notesList;
  }
}
