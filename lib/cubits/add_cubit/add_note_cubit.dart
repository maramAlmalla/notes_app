import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/wedgits/constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      // تحقق مما إذا كان الصندوق مفتوحًا قبل استخدامه
      var notesbox = Hive.isBoxOpen(kNotesBox)
          ? Hive.box<NoteModel>(kNotesBox)
          : await Hive.openBox<NoteModel>(kNotesBox);
      await notesbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
