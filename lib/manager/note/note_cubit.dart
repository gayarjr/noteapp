import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  void addNote(String title, String ocntent) {
    emit(AddNoteLoading());
    try {
      // add note method
    } catch (e) {
      emit(AddNoteFailed(e.toString()));
    }
  }
}
