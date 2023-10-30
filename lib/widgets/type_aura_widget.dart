import 'package:epi_help_app/utils/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TypeAuraWidget extends StatelessWidget {
  final String type;
  final bool isSelect;
  final Function() onTap;

  const TypeAuraWidget(
      {Key? key,
      required this.type,
      required this.isSelect,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 38,
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xffE6E4EA)))),
        child: Row(
          children: [
            Text(
              type,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(18.5),
              child: Ink(
                height: 24,
                width: 24,
                child: Center(child: SvgPicture.asset(Asset.tInfoSquareIcon)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                  height: 24,
                  width: 24,
                  child: isSelect
                      ? const Icon(Icons.done, color: Color(0xffBAE637))
                      : null),
            )
          ],
        ),
      ),
    );
  }
}
