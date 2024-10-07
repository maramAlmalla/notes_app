import 'package:flutter/material.dart';
import 'package:notes_app/view/wedgits/custom_button.dart';
import 'package:notes_app/view/wedgits/custom_text_field.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          const CustomTextField(
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(text: 'Add'),
        ],
      ),
    );
  }
}
