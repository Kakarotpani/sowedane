import 'package:flutter/material.dart';
import 'package:sowedane/utils/colors/colors.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: primaryTextColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  final String data;
  const NormalText({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        color: secondaryTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  final String data;
  const SmallText({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        color: primaryTextColor,
        fontSize: 10,
      ),
    );
  }
}

class BoldText extends StatelessWidget {
  final String label;
  const BoldText({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: primaryTextColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class FormLabel extends StatelessWidget {
  final String label;
  const FormLabel({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      alignment: Alignment.centerLeft,
      child: Text(
        label,
        style: const TextStyle(
          color: formLabelColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}