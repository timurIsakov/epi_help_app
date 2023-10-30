import 'package:epi_help_app/screens/report_event_screen.dart';
import 'package:epi_help_app/screens/type_aura_screen.dart';
import 'package:epi_help_app/widgets/back_button_widget.dart';
import 'package:epi_help_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class SettingsAuraScreen extends StatefulWidget {
  final String type;
  const SettingsAuraScreen({super.key, required this.type});

  @override
  State<SettingsAuraScreen> createState() => _SettingsAuraScreenState();
}

class _SettingsAuraScreenState extends State<SettingsAuraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: BackButtonWidget(onPress: () {}),
                  ),
                  const Text(
                    "Aura",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24,fontFamily: "Nunito"),
                  ),
                ],
              ),
              const SizedBox(height: 56),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 39,
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                child: const Row(
                  children: [
                    Text(
                      "When",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xffA0A3B1)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  TypeAuraScreen(currentType: widget.type),
                      ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 39,
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                  child: Row(
                    children: [
                      const Text(
                        "Type aura",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xffA0A3B1)),
                      ),
                      const Spacer(),
                      Text(
                        widget.type,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 25,
                        width: 25,
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xffBAE637),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 450),
              ButtonWidget(
                  widget: const Text("SAVE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReportEventScreen(),
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
