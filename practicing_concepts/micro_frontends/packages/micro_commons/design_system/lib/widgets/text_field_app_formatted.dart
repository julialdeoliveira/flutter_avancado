import 'package:flutter/material.dart';

class TextFieldAppFormatted extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final String textfieldKey;
  final FocusNode? nextFocus;
  final FocusNode? nowFocus;
  final dynamic validate;
  final dynamic formater;

  const TextFieldAppFormatted({
    Key? key,
    this.validate,
    this.nowFocus,
    this.nextFocus,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.textfieldKey, this.formater,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      focusNode: nowFocus,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.pink.shade100, width: 2),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        // enabled: false,
      ),
      inputFormatters: [
        formater,
      ],
      key: Key(textfieldKey),
    onFieldSubmitted: (value) => nextFocus!.requestFocus(),
    validator: validate,
    );
  }
}