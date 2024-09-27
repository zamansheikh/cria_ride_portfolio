import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void fToast(BuildContext context, {required String message}) {
  toastification.show(
      context: context,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.bottomCenter,
      type: ToastificationType.warning,
      style: ToastificationStyle.fillColored);
}
