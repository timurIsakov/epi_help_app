import 'package:epi_help_app/screens/bottom_navigation_screen.dart';
import 'package:epi_help_app/screens/settings_aura_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Nunito",
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child:  SettingsAuraScreen(type: "Other",),
    );
  }
}
