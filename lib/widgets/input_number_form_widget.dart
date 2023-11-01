import 'package:flutter/material.dart';

class InputNumberFormWidget extends StatefulWidget {
  InputNumberFormWidget({Key? key}) : super(key: key);

  @override
  State<InputNumberFormWidget> createState() => _InputNumberFormWidgetState();
}

class _InputNumberFormWidgetState extends State<InputNumberFormWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  bool isHasValue = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _textEditingController.addListener(() {
      setState(() {
        isHasValue = _textEditingController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        showCursor: false,
        maxLength: 1,
        controller: _textEditingController,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 10,
              color: isHasValue ? const Color(0xffF2F3F7) : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          counterText: "",
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 10,
              color: isHasValue ? const Color(0xffF2F3F7) : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
