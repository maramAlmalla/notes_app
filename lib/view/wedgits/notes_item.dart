import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.yellow,
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Build your Career with   Maram Almalla',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 22),
              ),
            ),
            trailing: Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text(
              'May 21, 2024',
              style: TextStyle(color: Colors.black.withOpacity(.4)),
            ),
          )
        ],
      ),
    );
  }
}
