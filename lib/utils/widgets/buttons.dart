import 'package:flutter/material.dart';
import 'package:sowedane/utils/colors/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  const PrimaryButton({Key? key, required this.label, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: const BoxDecoration(
        color: primaryBtnColor,
        borderRadius: BorderRadius.all(Radius.circular(40))
      ),
      child: InkWell(
          onTap: ()=> onPressed,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                color: formColor,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
    );
  }
}