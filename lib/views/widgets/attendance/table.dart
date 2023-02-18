import 'package:ecc_school_app_mobile/models/attendance/attendance_model.dart';
import 'package:ecc_school_app_mobile/views/widgets/attendance/data_cell.dart';
import 'package:ecc_school_app_mobile/views/widgets/attendance/data_header.dart';
import 'package:flutter/material.dart';

const Color headerColor = Colors.black45;
Color oddCellColor = Colors.lightBlue.shade50;
Color evenCellColor = Colors.grey.shade50;

DataTable table(List<Attendance> attendances, BuildContext context) {
  return DataTable(
    headingRowHeight: 40,
    dataRowHeight: 40,
    columnSpacing: 10,
    horizontalMargin: 10,
    headingRowColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
    columns: [
      dataHeader(title: '授業名'),
      dataHeader(title: '出席率'),
      dataHeader(title: '欠席回数'),
      dataHeader(title: '遅刻回数'),
      dataHeader(title: '出席回数'),
    ],
    rows: List.generate(
      attendances.length,
      (index) {
        final bgColor = index % 2 == 0 ? evenCellColor : oddCellColor;

        return DataRow(
          color: MaterialStateProperty.all(bgColor),
          cells: [
            dataCell(
              data: attendances[index].title,
            ),
            dataCell(
              data: attendances[index].rate,
              isRight: true,
            ),
            dataCell(
              data: "${attendances[index].absence}回",
              isRight: true,
            ),
            dataCell(
              data: "${attendances[index].lateness}回",
              isRight: true,
            ),
            dataCell(
              data: "${attendances[index].count}回",
              isRight: true,
            ),
          ],
        );
      },
    ),
  );
}
