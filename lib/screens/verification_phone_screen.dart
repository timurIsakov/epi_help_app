import 'package:epi_help_app/widgets/back_button_widget.dart';
import 'package:epi_help_app/widgets/button_widget.dart';
import 'package:epi_help_app/widgets/input_number_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class VerificationPhoneScreen extends StatefulWidget {
  const VerificationPhoneScreen({super.key});

  @override
  State<VerificationPhoneScreen> createState() =>
      _VerificationPhoneScreenState();
}

class _VerificationPhoneScreenState extends State<VerificationPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: BackButtonWidget(
                          onPress: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    "Enter code for\nverification",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 230),
                  Padding(
                    padding: const EdgeInsets.only(left: 72,right: 72),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...List.generate(4, (index) =>  InputNumberFormWidget())
                      ],
                    ),
                  ),

                  const SizedBox(height: 167),
                  ButtonWidget(
                    widget: const Text("RECENT CODE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 14)),
                    onPress: () {},
                    height: 35,
                    width: 131,
                    borderRadius: 10,
                    color: const Color(0xff73D13D),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
