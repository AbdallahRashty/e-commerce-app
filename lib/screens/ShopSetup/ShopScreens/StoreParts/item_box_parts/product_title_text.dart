import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.text,
    this.maxline = 1,
    this.textAlign = TextAlign.start,
  });

  final String text;
  final int maxline;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxline,
      textAlign: textAlign,
    );
  }
}
