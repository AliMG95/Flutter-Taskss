import 'package:flutter/material.dart';

class CustomTxtBtn extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;
  final double? fontSize;
  final Color? txtColor;
  final EdgeInsetsGeometry? padding;
  final FontWeight? fontWeight;
  final MainAxisAlignment alignment;
  const CustomTxtBtn({
    // Key? key,
    super.key,
    required this.txt,
    required this.onPressed,
    this.fontSize = 16.0,
    this.txtColor = Colors.blue,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    this.fontWeight = FontWeight.normal,
    this.alignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          alignment == MainAxisAlignment.center
              ? Alignment.center
              : alignment == MainAxisAlignment.end
              ? Alignment.centerRight
              : Alignment.centerLeft,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: txtColor,
          textStyle: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
          padding: padding,
        ),
        child: Text(txt),
      ),
    );
  }
}
