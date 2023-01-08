import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/login/login/login_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../utils/routes.dart';

class CadastroLeft extends StatefulWidget {
  const CadastroLeft({super.key});

  @override
  State<CadastroLeft> createState() => _CadastroLeftState();
}

class _CadastroLeftState extends State<CadastroLeft> {
  bool isActive = false;
  StreamSubscription? streamSubscription;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _name;
  late final TextEditingController _cpf;
  bool visivelSenha = true;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _name = TextEditingController();
    _cpf = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _cpf.dispose();
    _name.dispose();
    super.dispose();
  }

  void verSenha() {
    setState(() {
      visivelSenha = !visivelSenha;
    });
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
              "Cadastro",
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
              controller: _name,
              decoration: const InputDecoration(
                hintText: 'Nome ',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                prefixIcon: Icon(
                  Icons.person_outline_sharp,
                  color: Color(0xFF3A3A3A),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CpfOuCnpjFormatter()
              ],
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              enableSuggestions: false,
              autocorrect: false,
              controller: _cpf,
              decoration: const InputDecoration(
                hintText: 'CPF',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                prefixIcon: Icon(
                  Icons.person_outline_sharp,
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
              obscureText: visivelSenha,
              enableSuggestions: false,
              autocorrect: false,
              controller: _password,
              decoration: InputDecoration(
                hintText: 'Insira sua senha',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Color(0xFF3A3A3A),
                ),
                suffixIcon: IconButton(
                  icon: Icon(visivelSenha
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined),
                  onPressed: () {
                    verSenha();
                  },
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  checkColor: Colors.orangeAccent,
                  value: isActive,
                  onChanged: (value) => setState(() {
                    isActive = value!;
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    'Eu aceito os termos e condições\ne a politica de privacidade',
                    style: TextStyle(color: Colors.grey[400], fontSize: 10),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                final name = _name.text;

                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email, password: password);

                  User user = userCredential.user!;
                  user.updateDisplayName(name);
                  Navigator.pushNamed(context, Routes.home);
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'email-already-in-use') {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Expanded(
                          child: AlertDialog(
                            title: const Text('Usuário já existe'),
                            contentTextStyle: GoogleFonts.montserrat(
                              color: textWhiteDarkBackgroundColor,
                            ),
                            content:
                                const Text('Clique em "OK" para fazer o Login'),
                            actions: [
                              TextButton(
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage1()),
                                  );
                                },
                                child: Text(
                                  'OK',
                                  style: GoogleFonts.montserrat(
                                      color: textWhiteDarkBackgroundColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                }
              },
              child: const Text("CADASTRAR"),
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
