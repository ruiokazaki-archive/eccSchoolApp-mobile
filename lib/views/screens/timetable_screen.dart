import 'package:ecc_school_app_mobile/constants/timetable_type_constants.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/timetable/fixed_button.dart';
import 'package:ecc_school_app_mobile/views/widgets/timetable/table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimetableScreen extends HookConsumerWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timetableTypeState = useState(TimetableTypeConstants.LectureScreen);

    return layout(
      selectedBottomNavigationIndex: 1,
      pageTitle: '時間割',
      context: context,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: timetable(
                context: context,
                ref: ref,
                timetableTypeStateValue: timetableTypeState.value,
              ),
            ),
          ),
          fixedButton(
            context: context,
            timetableTypeState: timetableTypeState,
          ),
        ],
      ),
    );
  }
}
