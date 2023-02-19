// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:ecc_school_app_mobile/routes/app_router.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart';
import 'package:flutter/material.dart';

final LIST_OF_ITEM = [
  {
    "icon": Icons.home_rounded,
    "title": "ホーム",
    "onTap": () {
      AppRouter.pushNamed(Routes.HomeRoute);
    },
  },
  {
    "icon": Icons.schedule,
    "title": "時間割",
    "onTap": () {
      AppRouter.pushNamed(Routes.TimetableRoute);
    },
  },
  {
    "icon": Icons.percent,
    "title": "出席率",
    "onTap": () {
      AppRouter.pushNamed(Routes.AttendanceRoute);
    },
  },
  {
    "icon": Icons.notifications,
    "title": "お知らせ",
    "onTap": () {
      AppRouter.pushNamed(Routes.NewsRoute);
    },
  },
  {
    "icon": Icons.calendar_month,
    "title": "カレンダー",
    "onTap": () {
      AppRouter.pushNamed(Routes.CalendarRoute);
    },
  }
];

Widget bottomNavigation(BuildContext context, {required int selectedIndex}) {
  Size size = MediaQuery.of(context).size;

  return Container(
    margin: const EdgeInsets.all(20),
    height: 68,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.15),
          blurRadius: 30,
          offset: const Offset(0, 10),
        ),
      ],
      borderRadius: BorderRadius.circular(30),
    ),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: LIST_OF_ITEM.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          (LIST_OF_ITEM[index]["onTap"] as Function())();
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: SizedBox(
          width: (size.width - 40 - 16) / 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedContainer(
                width: 42,
                duration: const Duration(milliseconds: 1500),
                curve: Curves.fastLinearToSlowEaseIn,
                margin: EdgeInsets.only(bottom: index == selectedIndex ? 0 : 8),
                height: index == selectedIndex ? 8 : 0,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  ),
                ),
              ),
              Icon(
                LIST_OF_ITEM[index]["icon"] as IconData,
                size: 32,
                color:
                    index == selectedIndex ? Colors.blueAccent : Colors.black45,
              ),
              Text(
                LIST_OF_ITEM[index]["title"] as String,
                style: TextStyle(
                  fontSize: 11,
                  color: index == selectedIndex
                      ? Colors.blueAccent
                      : Colors.black38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    ),
  );
}
