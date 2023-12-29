import 'package:flutter/material.dart';

class LeadingAndTextAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  Widget? leadingIcon;
  Widget? actionsIcon;
  String title;
  bool centerTitle;
  double? leadingWidth;

  LeadingAndTextAppBar(
      {Key? key,
      this.leadingIcon,
      this.actionsIcon,
      required this.title,
      this.centerTitle = true,
      this.leadingWidth = 20})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: leadingWidth,
      leading: leadingIcon,
      actions: actionsIcon != null ? [actionsIcon!] : null,
      title: Text(title),
      centerTitle: centerTitle,
    );
  }
}
