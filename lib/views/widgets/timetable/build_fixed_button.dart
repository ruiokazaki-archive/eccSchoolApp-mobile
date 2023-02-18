import 'package:ecc_school_app_mobile/constants/timetable_type_constants.dart';
import 'package:flutter/material.dart';

Widget buildFixedButton({
  required BuildContext context,
  required ValueNotifier<String> timetableTypeState,
}) {
  return Positioned(
    bottom: 0,
    child: Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: TextButton(
        onPressed: () {
          timetableTypeState.value =
              timetableTypeState.value == TimetableTypeConstants.LectureScreen
                  ? TimetableTypeConstants.AttendingScreen
                  : TimetableTypeConstants.LectureScreen;
        },
        child: Text(
          timetableTypeState.value == TimetableTypeConstants.LectureScreen
              ? "出席情報を表示"
              : "出席情報を非表示",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
