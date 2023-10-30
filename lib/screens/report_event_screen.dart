import 'package:epi_help_app/screens/type_trigger_screen.dart';
import 'package:epi_help_app/utils/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/back_button_widget.dart';
import '../widgets/button_widget.dart';

class ReportEventScreen extends StatefulWidget {

  const ReportEventScreen({super.key});

  @override
  State<ReportEventScreen> createState() => _ReportEventScreenState();
}

class _ReportEventScreenState extends State<ReportEventScreen> {
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
                  BackButtonWidget(onPress: () {Navigator.pop(context);}),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      "Report Event",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 41),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 39,
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "When",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xffA0A3B1)),
                    ),
                    Text(
                      "Today, 9.41 am",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 39,
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Duration",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xffA0A3B1)),
                    ),
                    Text(
                      "5 sec",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TypeTriggerScreen(),
                      ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 61,
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Trigger",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xffA0A3B1)),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const TypeTriggerScreen(),
                                  ));
                            },
                            borderRadius: BorderRadius.circular(100),
                            splashColor: Colors.grey,
                            child: Ink(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(Asset.tPlusIcon),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 61,
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Descriptions trigger",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffA0A3B1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 39,
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                child: const Row(
                  children: [
                    Text(
                      "Seizure",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xffA0A3B1)),
                    ),
                    Spacer(),
                    Text(
                      "Tonic",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    SizedBox(
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
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 61,
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Descriptions trigger",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffA0A3B1)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Experienced a lot of anxienty",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 61,
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Comment",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffA0A3B1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 129),
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
