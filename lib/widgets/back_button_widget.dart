import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final Function() onPress;
  const BackButtonWidget({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {
        onPress.call();
      },
      child: Ink(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1, color: const Color(0xffEBEAEC)),
        ),
        child: const Center(
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
