import 'package:flutter/material.dart';

class TypeTriggerWidget extends StatelessWidget {
  final String type;
  final bool isSelect;
  final Function() onTap;

  const TypeTriggerWidget(
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
            SizedBox(
                height: 24,
                width: 24,
                child: isSelect
                    ? const Icon(Icons.done, color: Color(0xffBAE637))
                    : null)
          ],
        ),
      ),
    );
  }
}
