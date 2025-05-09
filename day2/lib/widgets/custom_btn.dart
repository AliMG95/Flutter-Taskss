import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String txt;
  final VoidCallback? onPressed;
  // final Color color = const Color.fromRGBO(236, 69, 95, 1);
  final double width;
  final double height;
  const CustomBtn({
    Key? key,
    required this.txt,
    required this.width,
    required this.height,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _getBackgroundColor(),
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        child: Text(
          txt,
          style: TextStyle(fontSize: 25, color: _getTextColor()),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    if (txt == "Sign Up" || txt == "Sign In") {
      return const Color.fromRGBO(236, 69, 95, 1);
    } else {
      return Colors.white;
    }
  }

  Color _getTextColor() {
    if (txt == "Sign Up" || txt == "Sign In") {
      return Colors.white;
    } else {
      return Colors.grey;
    }
  }
}
