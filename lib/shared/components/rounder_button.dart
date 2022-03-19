import 'package:flutter/material.dart';
import 'package:login/shared/colors.dart';
class RounderButton extends StatelessWidget {
  final String? text;
  final VoidCallback ? press;
  final Color color, textColor;
  const RounderButton({
    Key? key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,

  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: size.width *0.8,
      child: ClipRRect(
        borderRadius:BorderRadius.circular(29),
        child: FlatButton(
          padding:const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40),
          onPressed: press,
          color: color,
          child: Text(
            text!,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}