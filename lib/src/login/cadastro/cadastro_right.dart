import 'dart:ui';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:pub_dev/src/components/colors.dart';

class CadastroRight extends StatelessWidget {
  const CadastroRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: backgroundColor,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/tech.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: SizedBox(
            height: 500,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 12, sigmaX: 12),
                      child: Container(
                        alignment: Alignment.topCenter,
                        color: Colors.black,
                        padding: const EdgeInsets.all(42),
                        child: Text(
                          AppLocalizations.of(context)!.b,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28.00,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.0, 0.8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 15, 8, 2),
                      child: Image.asset(
                        'assets/images/Logo1.png',
                        width: 320,
                        height: 320,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
