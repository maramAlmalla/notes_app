import 'package:flutter/material.dart';
import 'package:notes_app/view/wedgits/color_Item.dart';
import 'package:notes_app/view/wedgits/constant.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key});

  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: KColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;

                  setState(() {});
                },
                child: ColorItem(
                  color: KColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
