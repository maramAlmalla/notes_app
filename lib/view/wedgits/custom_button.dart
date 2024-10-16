import 'package:flutter/material.dart';
import 'package:notes_app/view/wedgits/constant.dart';

@immutable
class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, required this.text, this.isLoading = false});
  final VoidCallback? onTap;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: isLoading
            ? const Center(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ),
              )
            : Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
      ),
    );
  }
}
