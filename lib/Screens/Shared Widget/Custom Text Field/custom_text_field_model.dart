import 'package:flutter/material.dart';

class PutCustomTextField {
  bool isScure;
  final TextEditingController textController;
  final String textLabel;
  final TextInputType textInput;
  final String prefixIcons;
  final bool hasSufixIcon;

  PutCustomTextField(this.isScure, this.textController, this.textLabel,
      this.textInput, this.prefixIcons, this.hasSufixIcon);
}
