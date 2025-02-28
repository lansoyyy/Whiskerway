import 'package:flutter/material.dart';

Future<DateTime?> datePickerWidget(
    BuildContext context, DateTime selectedDate) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: Colors.blue, // Header background color

          colorScheme:
              const ColorScheme.light(primary: Colors.blue), // Selection color
          buttonTheme: const ButtonThemeData(
            textTheme: ButtonTextTheme.primary, // Text color
          ),
        ),
        child: child!,
      );
    },
  );

  return picked;
}
