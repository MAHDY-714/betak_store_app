import 'package:flutter/material.dart';

class TextForemFieldAtribbuteModel {
  final TextEditingController textEditingController;
  final int counterInput;
  final int counterLowLimet;
  final int counterHeighLimet;
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  TextForemFieldAtribbuteModel({
    required this.textEditingController,
    required this.counterInput,
    this.counterLowLimet = 8,
    this.counterHeighLimet = 13,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });
}
