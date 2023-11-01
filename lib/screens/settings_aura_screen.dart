import 'package:epi_help_app/screens/report_event_screen.dart';
import 'package:epi_help_app/screens/type_aura_screen.dart';
import 'package:epi_help_app/utils/date_time_helper.dart';
import 'package:epi_help_app/widgets/back_button_widget.dart';
import 'package:epi_help_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SettingsAuraScreen extends StatefulWidget {
  String type;
  SettingsAuraScreen({Key? key, required this.type}) : super(key: key);

  @override
  State<SettingsAuraScreen> createState() => _SettingsAuraScreenState();
}

class _SettingsAuraScreenState extends State<SettingsAuraScreen> {
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          fontFamily: "Nunito"),
                    ),
                  ],
                ),
                const SizedBox(height: 56),
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
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TypeAuraScreen(currentType: widget.type),
                        ));
                    setState(() {
                      widget.type = result;
                    });

                    // print("Select type: $result");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 39,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xffE6E4EA)))),
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
      ),
    );
  }
}
