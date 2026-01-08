import 'package:flutter/material.dart';

class ButtonModel {
  final VoidCallback onClick;
  final Widget childWidget;

  const ButtonModel({required this.childWidget,required this.onClick});
}