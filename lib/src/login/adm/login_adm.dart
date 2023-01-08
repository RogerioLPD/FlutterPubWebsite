import 'package:flutter/material.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/login/adm/login_left.dart';
import 'package:pub_dev/src/login/adm/login_right.dart';

class LoginAdm extends StatelessWidget {
  const LoginAdm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 640,
            width: 1080,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const LoginLeft(),
                if (MediaQuery.of(context).size.width > 900) const LoginRight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
