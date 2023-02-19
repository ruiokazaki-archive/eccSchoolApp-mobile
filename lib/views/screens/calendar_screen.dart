import 'dart:collection';

import 'package:ecc_school_app_mobile/providers/calendar_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/async_value_layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

Widget _buildEventsMarker(DateTime date, List events) {
  return Positioned(
    right: 5,
    bottom: 5,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red[300],
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: const TextStyle().copyWith(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    ),
  );
}

class CalendarScreen extends HookConsumerWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusedDayState = useState<DateTime>(DateTime.now());
    final selectedDayState = useState<DateTime>(DateTime.now());

    final asyncValue = ref.watch(calendarNotifierProvider);

    return layout(
      selectedBottomNavigationIndex: 4,
      pageTitle: '行事予定',
      context: context,
      body: asyncValueLayout(
        context: context,
        asyncValue: asyncValue,
        builder: (eventsListState) {
          final events = LinkedHashMap<DateTime, List<String>>(
            equals: isSameDay,
            hashCode: getHashCode,
          )..addAll(eventsListState);
          List getEventForDay(DateTime day) {
            return events[day] ?? [];
          }

          return Column(
            children: [
              TableCalendar(
                locale: 'ja_JP',
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                ),
                focusedDay: focusedDayState.value,
                eventLoader: getEventForDay,
                selectedDayPredicate: (day) {
                  return isSameDay(selectedDayState.value, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(selectedDayState.value, selectedDay)) {
                    selectedDayState.value = selectedDay;
                    focusedDayState.value = focusedDay;
                    getEventForDay(selectedDay);
                  }
                },
                onPageChanged: (focusedDay) {
                  ref.read(calendarNotifierProvider.notifier).getCalendar(
                        DateFormat('yyyy').format(focusedDay),
                        DateFormat('MM').format(focusedDay),
                      );
                  focusedDayState.value = focusedDay;
                },
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, date, events) {
                    if (events.isNotEmpty) {
                      return _buildEventsMarker(date, events);
                    }
                    return null;
                  },
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: getEventForDay(selectedDayState.value)
                    .map(
                      (event) => ListTile(
                        title: Text(event.toString()),
                      ),
                    )
                    .toList(),
              )
            ],
          );
        },
      ),
    );
  }
}
