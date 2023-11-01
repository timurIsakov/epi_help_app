import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/type_aura_widget.dart';

class TypeAuraScreen extends StatefulWidget {
  final String currentType;
  const TypeAuraScreen({super.key, required this.currentType});

  @override
  State<TypeAuraScreen> createState() => _TypeAuraScreenState();
}

class _TypeAuraScreenState extends State<TypeAuraScreen> {
  List<String> listOfType = [
    "Sensory aura",
    "Auditory aura",
    "Olfactory aura",
    "Visceral aura",
    "Psychic aura",
    "Other",
  ];

  int currentIndex = 0;

  _changeSelection(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currentIndex = listOfType.indexOf(widget.currentType);
    });
  }

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
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: BackButtonWidget(onPress: () {
                      Navigator.pop(context);
                    }),
                  ),
                  const Text(
                    "Type aura",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(height: 56),
              ...List.generate(6, (index) {
                final type = listOfType[index];
                final localIndex = index;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TypeAuraWidget(
                    type: type,
                    onTap: () {
                      _changeSelection(localIndex);
                    },
                    isSelect: currentIndex == localIndex ? true : false,
                  ),
                );
              }),
              const SizedBox(height: 278),
              ButtonWidget(
                  widget: const Text("SAVE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                  onPress: () {
                    Navigator.pop(context, listOfType[currentIndex]);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
