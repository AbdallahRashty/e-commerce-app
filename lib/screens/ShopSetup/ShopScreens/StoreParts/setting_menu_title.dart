import 'package:flutter/material.dart';

class SettingMenuTitle extends StatelessWidget {
  const SettingMenuTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.ontap,
    this.trailing
  });
  final IconData icon;
  final String title, subTitle;
  final VoidCallback? ontap;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black,),
      title: Text(title,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
      subtitle: Text(subTitle,style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
      trailing: trailing,
      onTap: ontap,
    );
  }
}
