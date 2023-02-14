import 'package:flutter/material.dart';

AppBar appBar({
  String? title,
  required BuildContext context,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: false,
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: title != null ? 100 : 50,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) const SizedBox(height: 16),
        if (title != null)
          Text(
            title,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
      ],
    ),
  );
}
