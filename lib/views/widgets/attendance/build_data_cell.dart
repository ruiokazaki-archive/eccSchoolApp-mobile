import 'package:flutter/material.dart';

Color cellTextColor = Colors.black87;

DataCell buildDataCell({required String data, bool? isRight}) {
  isRight ??= false;

  return DataCell(
    Align(
      alignment: isRight ? Alignment.centerRight : Alignment.centerLeft,
      child: Text(
        data,
        style: TextStyle(
          color: cellTextColor,
        ),
      ),
    ),
  );
}
