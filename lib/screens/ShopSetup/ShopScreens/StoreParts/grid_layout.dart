import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisSpacing = 290,
  });

  final int itemCount;
  final double? mainAxisSpacing;
  final Widget? Function(BuildContext,int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: mainAxisSpacing,
        mainAxisSpacing: 16,
        crossAxisSpacing:16,
        crossAxisCount: 2,
      ),
      itemBuilder: itemBuilder
    );
  }
}
