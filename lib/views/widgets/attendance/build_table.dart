import 'package:ecc_school_app_mobile/models/attendance/attendance_model.dart';
import 'package:ecc_school_app_mobile/views/widgets/attendance/build_data_cell.dart';
import 'package:ecc_school_app_mobile/views/widgets/attendance/build_data_header.dart';
import 'package:flutter/material.dart';

const Color headerColor = Colors.black45;
Color oddCellColor = Colors.lightBlue.shade50;
Color evenCellColor = Colors.grey.shade50;

DataTable buildTable(List<Attendance> attendances, BuildContext context) {
  return DataTable(
    headingRowHeight: 40,
    dataRowHeight: 40,
    columnSpacing: 10,
    horizontalMargin: 10,
    headingRowColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
    columns: [
      buildDataHeader(title: '授業名'),
      buildDataHeader(title: '出席率'),
      buildDataHeader(title: '欠席回数'),
      buildDataHeader(title: '遅刻回数'),
      buildDataHeader(title: '出席回数'),
    ],
    rows: List.generate(
      attendances.length,
      (index) {
        final bgColor = index % 2 == 0 ? evenCellColor : oddCellColor;

        return DataRow(
          color: MaterialStateProperty.all(bgColor),
          cells: [
            buildDataCell(
              data: attendances[index].title,
            ),
            buildDataCell(
              data: attendances[index].rate,
              isRight: true,
            ),
            buildDataCell(
              data: "${attendances[index].absence}回",
              isRight: true,
            ),
            buildDataCell(
              data: "${attendances[index].lateness}回",
              isRight: true,
            ),
            buildDataCell(
              data: "${attendances[index].count}回",
              isRight: true,
            ),
          ],
        );
      },
    ),
  );
}
