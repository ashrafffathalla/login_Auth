import 'package:flutter/material.dart';
import 'package:login/shared/components/Bbckground.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const[
          Text(
            'WELCOME TO PRO',
          ),
        ],
      ),
    );
  }
}
