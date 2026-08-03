import 'package:flutter/material.dart';

class ShadowStyle{
  static final VerticulProductShadow = BoxShadow(
    color: Colors.grey[400]!.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2)
  );
  static final HorizontalProductShadow = BoxShadow(
      color: Colors.grey[400]!.withOpacity(0.2),
      spreadRadius: 7,
      blurRadius: 50,
      offset: const Offset(0, 2)
  );
}