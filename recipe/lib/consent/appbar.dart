import 'package:flutter/material.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Text("Recipes Bank", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),),
    backgroundColor: Colors.purple[400],
    centerTitle: true,
  );
}
