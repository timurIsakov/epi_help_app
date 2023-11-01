import 'package:epi_help_app/utils/asset.dart';

import 'package:epi_help_app/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

import '../entity/bottom_navigation_entity.dart';
import 'content_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<BottomNavigationEntity> listEntity = [
    BottomNavigationEntity(Asset.tChartIcon, "Diary"),
    BottomNavigationEntity(Asset.tAddUserIcon, "Contacts"),
    BottomNavigationEntity(Asset.tCallingIcon, "Help"),
    BottomNavigationEntity(Asset.tDocumentIcon, "Content"),
    BottomNavigationEntity(Asset.tSettingIcon, "Settings"),
  ];

  List<Widget> listOfScreens = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.blue,
    ),
    const ContentScreen(),
    Container(
      color: Colors.deepPurple,
    ),
  ];

  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfScreens[currentScreen],
      bottomNavigationBar: SizedBox(
        height: 112,
        width: 414,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                listEntity.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      currentScreen = index;
                    });
                  },
                  child: BottomNavigationItemWidget(
                    isActive: currentScreen == index,
                    entity: listEntity[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
