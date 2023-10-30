import 'package:epi_help_app/widgets/type_trigger_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/back_button_widget.dart';
import '../widgets/button_widget.dart';

class TypeTriggerScreen extends StatefulWidget {
  const TypeTriggerScreen({super.key});

  @override
  State<TypeTriggerScreen> createState() => _TypeTriggerScreenState();
}

class _TypeTriggerScreenState extends State<TypeTriggerScreen> {
  List<String> listOfType = [
    "Overtired, less sleep",
    "Stress",
    "Alcohol or drug use",
    "Bright or flashing lights",
    "Changes in medication",
    "Hormonal fluctations",
    "Changes in diet",
    "Excess caffeine",
    "Fever or overheated",
    "Other",
  ];

  List<int> selectedList = [];

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
                    padding: const EdgeInsets.only(right: 45),
                    child: BackButtonWidget(onPress: () {
                      Navigator.pop(context);
                    }),
                  ),
                  const Text(
                    "Type trigger",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(height: 41),
              ...List.generate(listOfType.length, (index) {
                final type = listOfType[index];
                final localIndex = index;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TypeTriggerWidget(
                      type: type,
                      isSelect:
                          selectedList.contains(localIndex) ? true : false,
                      onTap: () {
                        if (selectedList.contains(localIndex)) {
                          selectedList.remove(localIndex);
                        } else {
                          selectedList.add(localIndex);
                        }
                        setState(() {});
                      }),
                );
              }),
              const SizedBox(height: 52),
              ButtonWidget(
                  widget: const Text("SAVE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                  onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
