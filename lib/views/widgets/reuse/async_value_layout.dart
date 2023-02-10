import 'package:ecc_school_app_mobile/views/widgets/reuse/loader.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Widget asyncValueLayout<T>({
  required BuildContext context,
  required AsyncValue<T> asyncValue,
  required Widget Function(T data) builder,
}) {
  return asyncValue.when(
    data: (data) => builder(data),
    error: (error, _) => Text(error.toString()),
    loading: () => loader(context),
  );
}
