import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar ({
  String? title,
  List<Widget>? action,
  Widget? isLeading,
  required BuildContext context,
  Color? background,
}) {
  return AppBar(
    backgroundColor: background,
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: isLeading ?? IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: const Icon(Icons.arrow_back)),
    title: title != null ? Text(title) : null,
    actions: action,
  );
}