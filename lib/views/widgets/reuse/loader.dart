import 'package:flutter/material.dart';

Widget loader(BuildContext context, {double? height}) {
  return SizedBox(
    height: height ?? MediaQuery.of(context).size.height,
    child: const Center(child: CircularProgressIndicator()),
  );
}
