import 'package:flutter/material.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/login/cadastro/cadastro_left.dart';
import 'package:pub_dev/src/login/cadastro/cadastro_right.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({Key? key}) : super(key: key);

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
                const CadastroLeft(),
                if (MediaQuery.of(context).size.width > 900)
                  const CadastroRight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
