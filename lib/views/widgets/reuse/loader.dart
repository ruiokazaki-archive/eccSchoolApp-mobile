import 'package:flutter/material.dart';

Widget loader(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height,
    child: const Center(child: CircularProgressIndicator()),
  );
}
