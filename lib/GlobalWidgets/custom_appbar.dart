import 'package:flutter/material.dart';

PreferredSizeWidget customAppbar({
  String? title,
  List<Widget>? actions,
  Widget? isLeading,
}){
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: isLeading ?? IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),),
    title: title != null? Text(title) : null,
    actions: actions,
  );
}