import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/shared/colors.dart';
import 'package:login/shared/components/Bbckground.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'WELCOME TO PRO',
          ),
          SvgPicture.asset(
              'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          const SizedBox(height: 5,),
          Container(
            width: size.width *0.8,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(29),
              child: FlatButton(
                padding:const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40),
                  onPressed: (){},
                color: kPrimaryColor,
                  child:const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
