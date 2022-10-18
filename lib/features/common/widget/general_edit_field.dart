import 'package:flutter/material.dart';

class GeneralEditField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;

  const GeneralEditField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            suffixIcon: controller.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => controller.clear(),
                  ),
            border: const UnderlineInputBorder(),
          ),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          autofocus: true,
        ),
      );
}
