import 'package:flutter/material.dart';

const Color headerTextColor = Colors.white;

DataColumn buildDataHeader({required String title}) {
  return DataColumn(
    label: Text(
      title,
      style: const TextStyle(
        color: headerTextColor,
      ),
    ),
  );
}
