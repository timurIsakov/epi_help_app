import 'package:epi_help_app/utils/asset.dart';
import 'package:epi_help_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_with_email_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 504,
            width: MediaQuery.sizeOf(context).width,
            child: Stack(
              children: [
                SvgPicture.asset(Asset.tBackgroundLogIn, fit: BoxFit.cover),
                Center(
                  child: Image.asset(
                    Asset.tLogInImage,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Log in with",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 100),
          ButtonWidget(
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginWithEmailScreen(),
                    ));
              },
              widget: const Text(
                "PHONE NUMBER",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              )),
          const SizedBox(height: 20),
          ButtonWidget(
            onPress: () {

            },
            border: Border.all(color: Color(0xff73D13D),width: 2),
            color: Colors.white,
            widget: const Text(
              "E-MAIL",
              style: TextStyle(
                  color: Color(0xff73D13D),
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
