import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/login/cadastro/cadastro.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../utils/routes.dart';

class LoginLeft extends StatefulWidget {
  const LoginLeft({super.key});

  @override
  State<LoginLeft> createState() => _LoginLeftState();
}

class _LoginLeftState extends State<LoginLeft> {
  StreamSubscription? streamSubscription;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)!.a,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
            const SizedBox(height: 24),
            TextField(
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              enableSuggestions: false,
              autocorrect: false,
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Insira seu e-mail',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Color(0xFF3A3A3A),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
            TextField(
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              controller: _password,
              decoration: const InputDecoration(
                hintText: 'Insira sua senha',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                prefixIcon: Icon(
                  Icons.edit,
                  color: Color(0xFF3A3A3A),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                try {
                  final userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email, password: password);
                  if (userCredential.user != null) {
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CadastroPage()),
                    );
                  }
                } catch (e) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Expanded(
                        child: AlertDialog(
                          title: const Text('E-mail ou senha incorretos'),
                          contentTextStyle: GoogleFonts.montserrat(
                              color: textWhiteDarkBackgroundColor),
                          content: const Text('Registre-se'),
                          actions: [
                            TextButton(
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CadastroPage()),
                                  );
                                },
                                child: Text(
                                  'OK',
                                  style: GoogleFonts.montserrat(
                                    color: textWhiteDarkBackgroundColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              child: const Text("Login"),
              minWidth: double.infinity,
              height: 52,
              elevation: 24,
              color: Colors.amber.shade700,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topRight,
              child: MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                elevation: 0,
                onPressed: () => Navigator.pushNamed(context, Routes.home),
                child: Text(
                  'VOLTAR',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
