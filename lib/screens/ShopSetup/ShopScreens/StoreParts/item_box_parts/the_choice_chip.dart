import 'package:flutter/material.dart';
import 'package:laplace_project/help_functions/help_function.dart';
import 'package:laplace_project/screens/ShopSetup/ShopScreens/StoreParts/container1/circular_container.dart';

class TheChoiceChip extends StatelessWidget {
  const TheChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = HelpFunction.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: isColor ? CircularContainer(width: 50, height: 50,backgroundColor: HelpFunction.getColor(text)!) : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      shape: isColor ? const CircleBorder() : null,
      backgroundColor: isColor ? HelpFunction.getColor(text)! : null,
    );
  }
}

