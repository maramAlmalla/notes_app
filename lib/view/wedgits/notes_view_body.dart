import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/view/wedgits/custom_app_bar.dart';
import 'package:notes_app/view/wedgits/notes_item.dart';
import 'package:notes_app/view/wedgits/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
