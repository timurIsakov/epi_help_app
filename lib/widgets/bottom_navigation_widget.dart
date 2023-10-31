import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/bottom_navigation_entity.dart';

class BottomNavigationItemWidget extends StatelessWidget {
  final BottomNavigationEntity entity;
  final bool isActive;
  const BottomNavigationItemWidget(
      {Key? key, required this.entity, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: isActive ? 46 : 25,
          width: isActive ? 46 : 25,
          decoration: BoxDecoration(
            borderRadius:
                isActive ? const BorderRadius.all(Radius.circular(18)) : null,
            color: isActive ? const Color(0xff73D13D) : null,
          ),
          child: Center(
            child: SvgPicture.asset(
              entity.icon,
              color: isActive ? Colors.white : const Color(0xffA0A3B1),
            ),
          ),
        ),
         SizedBox(height: isActive ? 6:17),
        Text(
          entity.title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: isActive
                  ? const Color(0xff73D13D)
                  : const Color(0xffA0A3B1)),
        )
      ],
    );
  }
}
