import 'package:flutter/material.dart';
import 'package:login/shared/colors.dart';
import 'package:login/shared/components/login/text_field.dart';
class RounderInputField extends StatelessWidget
{
  final String hinText;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool isPassword ;
  final ValueChanged<String>? onChange;
  const RounderInputField({
    Key? key,
    required this.hinText,
    required this.icon ,
    this.isPassword = false,
    this.suffixIcon,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        obscureText: isPassword,
        decoration: InputDecoration(
          icon: Icon(
            icon!,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: kPrimaryColor,
          ),
          hintText: hinText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
