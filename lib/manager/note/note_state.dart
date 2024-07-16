part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class AddNoteLoading extends NoteState {}

final class AddNoteSuccess extends NoteState {}

final class AddNoteFailed extends NoteState {
  final String message;
  AddNoteFailed(this.message);
}
