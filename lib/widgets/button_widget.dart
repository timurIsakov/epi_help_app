import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget widget;
  final Function() onPress;
  final double? borderRadius;

  const ButtonWidget(
      {Key? key,
      this.height,
      this.width,
      this.color,
      required this.widget,
      required this.onPress,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress.call();
      },
      borderRadius: BorderRadius.circular(borderRadius ?? 38),
      child: Ink(
        height: height ?? 63,
        width: width ?? 374,
        decoration: BoxDecoration(
          //color: color,
          borderRadius: BorderRadius.circular(borderRadius ?? 38),
          gradient: const LinearGradient(
              colors: [Color(0xffBAE637), Color(0xff73D13D)]),
        ),
        child: Center(child: widget),
      ),
    );
  }
}
