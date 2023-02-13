import 'package:flutter/material.dart';

TableRow buildTableHeader(BuildContext context) {
  return TableRow(
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
    ),
    children: [
      for (final heading in ["＃", "月", "火", "水", "木", "金"])
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              heading,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        )
    ],
  );
}
