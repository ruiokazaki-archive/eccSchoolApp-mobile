import 'package:ecc_school_app_mobile/helpers/utils/open_url.dart';
import 'package:flutter/material.dart';

Widget linkItem({
  required String label,
  required String link,
  required IconData icon,
}) {
  return ListTile(
    title: Transform.translate(
      offset: const Offset(-16, 0),
      child: Text(label),
    ),
    leading: Icon(
      icon,
      size: 24,
    ),
    onTap: () => {
      openUrl(link),
    },
    shape: const Border(
      bottom: BorderSide(
        color: Colors.black26,
        width: .5,
      ),
    ),
  );
}
