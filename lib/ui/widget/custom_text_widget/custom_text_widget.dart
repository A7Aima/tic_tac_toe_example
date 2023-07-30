import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final String? fontFamily;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final Color decorationColor;
  final List<TextSpan> textSpanList;
  final double letterSpacing;
  final TextOverflow textOverflow;
  final BuildContext? context;
  final List<Shadow>? shadows;
  final int? maxLines;
  final double? height;
  final bool softWrap;
  const CustomText({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 16,
    this.fontFamily,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.left,
    this.textSpanList = const [],
    this.textDecoration = TextDecoration.none,
    this.letterSpacing = 0,
    this.textOverflow = TextOverflow.visible,
    this.context,
    this.maxLines,
    this.height,
    this.softWrap = true,
    this.decorationColor = Colors.transparent,
    this.shadows,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      overflow: textOverflow,
      softWrap: softWrap,
      maxLines: maxLines,
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          decoration: textDecoration,
          decorationColor: decorationColor,
          letterSpacing: letterSpacing,
          height: height,
          shadows: shadows,
        ),
        children: textSpanList,
      ),
    );
  }
}

extension CapExtension on String {
  String get inCaps =>
      this.length > 0 ? '${this[0].toUpperCase()}${this.substring(1)}' : this;
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstofEach => this
      .replaceAll(RegExp(' +'), ' ')
      .split(" ")
      .map((str) => str.inCaps)
      .join(" ");
}
