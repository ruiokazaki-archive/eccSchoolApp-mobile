import 'package:flutter/material.dart';

Widget wrapItem({
  required IconData icon,
  required String label,
  required Color color,
  required Function onTapped,
  required BuildContext context,
}) {
  return SizedBox(
    width: (MediaQuery.of(context).size.width - 48) / 2,
    child: GestureDetector(
      onTap: () => onTapped(),
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(26.0),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Opacity(
              opacity: 0.3,
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(height: 16.0),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
