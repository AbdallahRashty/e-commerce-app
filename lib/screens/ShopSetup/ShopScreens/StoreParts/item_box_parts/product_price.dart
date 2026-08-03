import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    this.currencySign = "\$",
    this.maxline = 1,
    required this.price,
  });

  final String currencySign, price;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign+price,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}
