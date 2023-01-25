// ignore_for_file: constant_identifier_names

import 'package:ecc_school_app_mobile/providers/attendances_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_table/flutter_expandable_table.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const Color headerColor = Colors.black45;
const Color headerTextColor = Colors.white;
Color oddCellColor = Colors.lightBlue.shade50;
Color evenCellColor = Colors.grey.shade50;
Color cellTextColor = Colors.black87;

class AttendanceScreen extends HookConsumerWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attendances = ref.watch(attendancesNotifierProvider);

    ExpandableTable buildTable() {
      const List<String> COLUMN_TITLES = [
        '出席率',
        '欠席回数',
        '遅刻回数',
        '出席回数',
      ];

      ExpandableTableHeader header = ExpandableTableHeader(
        firstCell: Container(
          color: headerColor,
          margin: const EdgeInsets.all(1),
          child: const Center(
            child: Text(
              '授業名',
              style: TextStyle(color: headerTextColor),
            ),
          ),
        ),
        children: List.generate(
          COLUMN_TITLES.length,
          (index) => Container(
            color: headerColor,
            margin: const EdgeInsets.all(1),
            child: Center(
              child: Text(
                COLUMN_TITLES[index],
                style: const TextStyle(color: headerTextColor),
              ),
            ),
          ),
        ),
      );

      List<ExpandableTableRow> rows = List.generate(
        attendances.length,
        (index) => ExpandableTableRow(
          height: 50,
          firstCell: Container(
            color: index % 2 == 0 ? evenCellColor : oddCellColor,
            margin: const EdgeInsets.all(1),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  attendances[index].title,
                  style: TextStyle(
                    color: cellTextColor,
                  ),
                ),
              ),
            ),
          ),
          children: <Widget>[
            Container(
              color: index % 2 == 0 ? evenCellColor : oddCellColor,
              margin: const EdgeInsets.all(1),
              child: Center(
                child: Text(
                  attendances[index].rate,
                  style: TextStyle(
                    color: cellTextColor,
                  ),
                ),
              ),
            ),
            Container(
              color: index % 2 == 0 ? evenCellColor : oddCellColor,
              margin: const EdgeInsets.all(1),
              child: Center(
                child: Text(
                  "${attendances[index].absence}回",
                  style: TextStyle(
                    color: cellTextColor,
                  ),
                ),
              ),
            ),
            Container(
              color: index % 2 == 0 ? evenCellColor : oddCellColor,
              margin: const EdgeInsets.all(1),
              child: Center(
                child: Text(
                  "${attendances[index].lateness}回",
                  style: TextStyle(
                    color: cellTextColor,
                  ),
                ),
              ),
            ),
            Container(
              color: index % 2 == 0 ? evenCellColor : oddCellColor,
              margin: const EdgeInsets.all(1),
              child: Center(
                child: Text(
                  "${attendances[index].count}回",
                  style: TextStyle(
                    color: cellTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

      return ExpandableTable(
        rows: rows,
        header: header,
        headerHeight: 50,
        firstColumnWidth: 150,
        cellWidth: 80,
        scrollShadowColor: Colors.black12,
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Attendance Screen')),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildTable(),
        ),
      ),
    );
  }
}
