import 'package:flutter/material.dart';

AppBar appBar({
  required String title,
  required BuildContext context,
}) {
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 100,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 4.0,
              width: 18.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
            const SizedBox(height: 4.0),
            Container(
              height: 4.0,
              width: 12.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
      ],
    ),
  );
}
