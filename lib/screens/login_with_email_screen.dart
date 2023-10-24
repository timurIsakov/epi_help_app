import 'package:epi_help_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'verification_phone_screen.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 90),
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
                  ),
                  const SizedBox(height: 33.53),
                  ButtonWidget(
                      color: const Color(0xffFF7648),
                      widget: const Text(
                        'CONTINUE WITH E-MAIL',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      onPress: () {}),
                  const SizedBox(height: 149),
                  Container(
                    width: 374,
                    height: 63,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F3F7),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefix: Text('+7 '),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 141),
                  ButtonWidget(
                      widget: const Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 16),
                      ),
                      onPress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationPhoneScreen(),));
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
