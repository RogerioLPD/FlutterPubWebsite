import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pub_dev/src/components/colors.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../ui/blocks.dart';
import '../utils/demo_cursos.dart';
import '../utils/routes.dart';

class CursosPage extends StatefulWidget {
  const CursosPage({super.key});

  @override
  State<CursosPage> createState() => _CursosPageState();
}

class _CursosPageState extends State<CursosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, Routes.home),
            );
          },
        ),
        backgroundColor: const Color.fromARGB(255, 23, 65, 112),
        title: Center(
          child: DefaultTextStyle(
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                letterSpacing: 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText('PROMOÇÃO!'),
                FadeAnimatedText('NÃO PERCA!!'),
                FadeAnimatedText('PREÇO EXCLUSIVO!!'),
              ],
              repeatForever: true,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(0),
        color: backgroundColor,
        child: Row(
          children: [
            ResponsiveVisibility(
              visible: true,
              hiddenWhen: const [Condition.smallerThan(name: TABLET)],
              child: Container(
                padding: const EdgeInsets.all(0),
                width: 400,
                height: double.infinity,
                color: const Color.fromARGB(255, 23, 65, 112),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("KIENIM",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 28,
                              letterSpacing: 3,
                              fontWeight: FontWeight.w500)),
                      const Divider(
                        height: 20,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 25, 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(240, 10, 22, 48),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 39, 39, 39),
                                offset: Offset(10, 10),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: const ListTile(
                            title: Text(
                              'NÃO PAGUE MAIS PARA EDITAR MAPAS!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Tenha acesso aos melhores softwares para\nedição de arquivos disponiveis no mercado!\nFaça o download totalmente gratuito\ne começe a editar mapas!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Listener(
                  onPointerDown: (event) {
                    // Clear Header search TextField focus.
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/tech.jpg'),
                          fit: BoxFit.cover),
                      color: backgroundColor,
                    ),
                    child: Center(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 1110),
                        padding: const EdgeInsets.fromLTRB(0, 44, 0, 140),
                        margin: const EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Cursos',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 38,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 40,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    color: textPrimaryColor,
                                    fontSize: 18,
                                    height: 1.6),
                                children: [
                                  TextSpan(
                                      text:
                                          'Aprenda tudo que precisa saber com os melhores softwares de edição de arquivos! ',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 10)),
                            if (ResponsiveWrapper.of(context)
                                .isLargerThan(MOBILE))
                              ResponsiveGridView.builder(
                                gridDelegate: const ResponsiveGridDelegate(
                                    crossAxisExtent: 450,
                                    mainAxisSpacing: 16,
                                    crossAxisSpacing: 86,
                                    childAspectRatio: 1.1),
                                maxRowCount: 1,
                                itemCount: favoritePackages2.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
                                alignment: Alignment.center,
                                itemBuilder: (context, index) {
                                  return PackageCard2(
                                      package: favoritePackages2[index]);
                                },
                              ),
                            if (ResponsiveWrapper.of(context)
                                .isSmallerThan('MOBILE_LARGE'))
                              ...favoritePackages2.map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25),
                                    child: PackageCard2(package: e),
                                  )),
                            const SizedBox(
                              height: 184,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
