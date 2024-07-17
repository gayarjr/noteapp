part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class AddNoteSuccess extends NoteState {}

final class AddNoteFailed extends NoteState {
  final String message;
  AddNoteFailed(this.message);
}

final class UpdateNoteSuccess extends NoteState {}

final class UpdateNoteFailed extends NoteState {
  final String message;
  UpdateNoteFailed(this.message);
}

final class DeleteNoteSuccess extends NoteState {}

final class DeleteNoteFailed extends NoteState {
  final String message;
  DeleteNoteFailed(this.message);
}

final class GetAllNoteSuccess extends NoteState {
  final List<dynamic> notes;
  GetAllNoteSuccess(this.notes);
}

final class GetAllNoteFailed extends NoteState {
  final String message;
  GetAllNoteFailed(this.message);
}
