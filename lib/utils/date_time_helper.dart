import 'package:flutter/material.dart';

class DateTimeHelper {
  static Future<DateTime?> showDate(BuildContext context) {
    return showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
              data: ThemeData().copyWith(
                  colorScheme: const ColorScheme.dark(
                surface: Color(0xffBAE637),
                primary: Colors.grey,
                onSurface: Colors.black,
              )),
              child: child!);
        });
  }

  static Future<TimeOfDay?> showTime(
      BuildContext context, TimeOfDay initialTime) {
    return showTimePicker(
        context: context,
        initialTime: initialTime,
        initialEntryMode: TimePickerEntryMode.dial,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData().copyWith(
                colorScheme: const ColorScheme.light(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    surface: Color(0xffBAE637))),
            child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  alwaysUse24HourFormat: false,
                ),
                child: child!),
          );
        });
  }
}
