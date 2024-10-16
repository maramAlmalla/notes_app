import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/wedgits/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesbox = Hive.isBoxOpen(kNotesBox)
        ? Hive.box<NoteModel>(kNotesBox)
        : await Hive.openBox<NoteModel>(kNotesBox);

    notes = notesbox.values.toList();
    emit(NotesSuccess());
  }
}
