import 'package:flutter/material.dart';
import 'package:login/shared/components/login/background_login.dart';
class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return  BackgroundLogin(
      child: Column(
        children: [

        ],
      ),
    );

  }
}

