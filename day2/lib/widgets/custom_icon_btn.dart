import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  final String txt;
  final String img_icon;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final double? iconWidth;
  final double? iconHeight;
  final AlignmentGeometry? textAlignment;
  final AlignmentGeometry? iconAlignment;
  final EdgeInsets? iconPadding; // بروبرتي جديدة للتحكم في padding الأيقونة

  const CustomIconBtn({
    Key? key,
    required this.txt,
    required this.img_icon,
    this.onPressed,
    this.width,
    this.height,
    this.textStyle,
    this.iconWidth,
    this.iconHeight,
    this.textAlignment = Alignment.center,
    this.iconAlignment = Alignment.centerLeft,
    this.iconPadding, // القيمة الافتراضية هتكون null يعني مفيش padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 350,
      height: height ?? 50,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: iconAlignment!,
              child: Padding(
                padding:
                    iconPadding ??
                    EdgeInsets
                        .zero, // استخدم الـ padding المخصص أو مفيش padding
                child: SizedBox(
                  width: iconWidth,
                  height: iconHeight,
                  child: Image.asset(
                    img_icon,
                    width: iconWidth,
                    height: iconHeight,
                  ),
                ),
              ),
            ),
            Align(
              alignment: textAlignment!,
              child: Text(
                txt,
                style:
                    textStyle ??
                    const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 122, 122, 122),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
