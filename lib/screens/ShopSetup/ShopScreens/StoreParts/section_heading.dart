import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading(
      {super.key,
      required this.title,
      this.buttonTitle = "View all",
      this.showActionButton = true,
      this.OnPress
      });

  final String title, buttonTitle;
  final bool showActionButton;
  final void Function()? OnPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 22,),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        ),
        if(showActionButton)TextButton(onPressed: OnPress, child: Text(buttonTitle)),
      ],
    );
  }
}
