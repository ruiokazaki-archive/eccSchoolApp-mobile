// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class NewsColorsGenerator {
  const NewsColorsGenerator._();

  static const String CareerCenterJaName = "キャリアセンター（旧進路指導課）より";
  static const Color CareerCenterColor = Colors.orange;

  static const String SchoolJaName = "学校からの連絡";
  static const Color SchoolColor = Colors.blue;

  static const String SchoolEventJaName = "学校行事";
  static const Color SchoolEventColor = Colors.red;

  static const String LibraryJaName = "図書室からの連絡";
  static const Color LibraryColor = Colors.deepPurple;

  static const String SecretariatJaName = "事務局からの連絡";
  static const Color SecretariatColor = Colors.green;

  static const String ClubJaName = "クラブ・サークル";
  static const Color ClubColor = Colors.lime;

  static const String OtherJaName = "その他";
  static const Color OtherColor = Colors.grey;

  static Color getColor(String tagName) {
    switch (tagName) {
      case NewsColorsGenerator.CareerCenterJaName:
        return NewsColorsGenerator.CareerCenterColor;
      case NewsColorsGenerator.SchoolJaName:
        return NewsColorsGenerator.SchoolColor;
      case NewsColorsGenerator.SchoolEventJaName:
        return NewsColorsGenerator.SchoolEventColor;
      case NewsColorsGenerator.LibraryJaName:
        return NewsColorsGenerator.LibraryColor;
      case NewsColorsGenerator.SecretariatJaName:
        return NewsColorsGenerator.SecretariatColor;
      case NewsColorsGenerator.ClubJaName:
        return NewsColorsGenerator.ClubColor;
      case NewsColorsGenerator.OtherJaName:
        return NewsColorsGenerator.OtherColor;
      default:
        return NewsColorsGenerator.OtherColor;
    }
  }
}
