import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color butColor;
  final Color textColor;
  const RoundedButton({
    Key? key,
    required this.title,
    required this.butColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontSize: 23,
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
      )),
      height: 45,
      width: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: butColor,
      ),
    );
  }
}
