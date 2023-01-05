import 'package:ecc_school_app_mobile/App.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await initializeDateFormatting('ja');

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
