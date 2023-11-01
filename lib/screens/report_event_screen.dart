import 'package:epi_help_app/screens/type_trigger_screen.dart';
import 'package:epi_help_app/utils/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../utils/date_time_helper.dart';
import '../widgets/back_button_widget.dart';
import '../widgets/button_widget.dart';

class ReportEventScreen extends StatefulWidget {
  const ReportEventScreen({super.key});

  @override
  State<ReportEventScreen> createState() => _ReportEventScreenState();
}

class _ReportEventScreenState extends State<ReportEventScreen> {
  List<String> list = <String>['Tonic', 'Two', 'Three', 'Four'];

  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();

  List<String> typesForTrigger = [];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;
    return KeyboardDismisser(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      BackButtonWidget(onPress: () {
                        Navigator.pop(context);
                      }),
                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          "Report Event",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 41),
                  GestureDetector(
                    onTap: () async {
                      DateTime? selectDate =
                          await DateTimeHelper.showDate(context);
                      TimeOfDay? selectTime =
                          await DateTimeHelper.showTime(context, selectedTime);
                      setState(() {
                        selectedTime = selectTime!;
                        selectedDate = selectDate!;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 39,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xffE6E4EA)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "When",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xffA0A3B1)),
                          ),
                          Text(
                            "${DateFormat('EEEE').format(selectedDate)}, ${selectedTime.hour}.${selectedTime.minute} ${selectedTime.period.name}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 39,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xffE6E4EA)))),
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
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () async {
                      List<String> types = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TypeTriggerScreen(),
                          ));
                      setState(() {
                        typesForTrigger = types;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 61,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xffE6E4EA)))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                onTap: () {},
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
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                    typesForTrigger.length,
                                    (index) => Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 5,
                                                width: 5,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xffBAE637)),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(typesForTrigger[index]),
                                            ],
                                          ),
                                        ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Descriptions trigger",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xffA0A3B1)),
                  ),
                  TextFormField(
                    cursorColor: const Color(0xffBAE637),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBAE637)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE6E4EA)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 39,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xffE6E4EA)))),
                    child: Row(
                      children: [
                        const Text(
                          "Seizure",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffA0A3B1)),
                        ),
                        const Spacer(),
                        DropdownButton(
                          value: dropdownValue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xffBAE637),
                          ),
                          underline: Container(
                            height: 0,
                          ),
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 61,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xffE6E4EA)))),
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
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Comment",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xffA0A3B1)),
                  ),
                  TextFormField(
                    cursorColor: const Color(0xffBAE637),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffBAE637))),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE6E4EA)),
                      ),
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
        ),
      ),
    );
  }
}
