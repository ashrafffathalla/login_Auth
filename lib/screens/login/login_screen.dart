import 'package:flutter/material.dart';
import 'package:login/shared/components/body.dart';
import 'package:login/shared/components/login/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBody(),
    );
  }
}


