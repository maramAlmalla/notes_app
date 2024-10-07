import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchButton(),
      ],
    );
  }
}

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 43,
        width: 43,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
