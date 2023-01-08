import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../utils/routes.dart';

class SoftwarePage extends StatefulWidget {
  const SoftwarePage({super.key});

  @override
  State<SoftwarePage> createState() => _SoftwarePageState();
}

class _SoftwarePageState extends State<SoftwarePage> {
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
                          child: ListTile(
                            title: Text(
                              AppLocalizations.of(context)!.title,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              AppLocalizations.of(context)!.subtitle,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
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
            if (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
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
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/images/tech2.jpg'),
                                      fit: BoxFit.cover),
                                  color: const Color.fromARGB(240, 10, 22, 48),
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(color: Colors.white),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(30, 30),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  title: Text('Softwares',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 78,
                                          letterSpacing: 4,
                                          fontWeight: FontWeight.w500)),
                                  trailing: const Icon(
                                    Icons.archive_outlined,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(240, 10, 22, 48),
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(10, 10),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  leading: const Icon(
                                    Icons.folder_copy_outlined,
                                    color: Colors.orangeAccent,
                                  ),
                                  title: Text('ECM TITANIUM FULL',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 20,
                                        letterSpacing: 2,
                                      )),
                                  trailing: TextButton(
                                    onPressed: () => Navigator.pushNamed(
                                        context, Routes.loginPage),
                                    child: Wrap(
                                      spacing: 12,
                                      children: <Widget>[
                                        Text("Download",
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20,
                                              letterSpacing: 2,
                                            )),
                                        const Icon(
                                          Icons.download,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('AEMTuner 2.98',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('ALIENTECH KSuite HT',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Bosch ECU NUMBER',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Bosch ECU Database',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Checksum Corrector',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Checksum Corrector V2',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('ChekSum Bosch',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text(
                                        'Chiptuning Kennfelder Audi Fiat Nissan Bmw Opel Vw',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Conections',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Crank Wheel Pulser',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Dicatec',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('DTC Remover',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('DTCRemover MarckStore',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Eugene V2.32',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Flash',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Flash Kit 29',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('FORScan 2.3.10',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('FT Manager',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Autocom',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Ksuite 2.53',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('KTM BENCH',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('M1 TUNE 1.4.0.0286',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Mecanica 2000',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Mtune installer 1.142',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('New Trasdata',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Nexus v1.37.0',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('ECU safe',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('EGR Remover 1.4.44',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('EMU Black',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Orange Programmer',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('PCLink EN 6.22.25',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Pinout ECU',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('PSA ECU PIN',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('TunerProRT v500 9290',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SyvecsSetup Generic',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Techlibrary Termxv2build50',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('TunerStudioMS v3.1.08',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Upa Scripts',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Upa Usb 1.3 software',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('WinOls 4.51 VM',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('AUTOCOM',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('DIMSPORT',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SIMPLO',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SMARTPHONE',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SPC+MAX+FULL',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 12,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            if (ResponsiveWrapper.of(context).isSmallerThan('MOBILE_LARGE'))
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
                      ),
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/images/tech2.jpg'),
                                      fit: BoxFit.cover),
                                  color: const Color.fromARGB(240, 10, 22, 48),
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(color: Colors.white),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(10, 10),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  title: Text('Softwares',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 28,
                                          letterSpacing: 3,
                                          fontWeight: FontWeight.w500)),
                                  trailing: const Icon(
                                    Icons.archive_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(240, 10, 22, 48),
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(10, 10),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  leading: const Icon(
                                    Icons.folder_copy_outlined,
                                    color: Colors.orangeAccent,
                                  ),
                                  title: Text('ECM TITANIUM FULL',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 14,
                                        letterSpacing: 2,
                                      )),
                                  trailing: TextButton(
                                    onPressed: () => Navigator.pushNamed(
                                        context, Routes.loginPage),
                                    child: Wrap(
                                      spacing: 2,
                                      children: <Widget>[
                                        Text("Download",
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 14,
                                              letterSpacing: 2,
                                            )),
                                        const Icon(
                                          Icons.download,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('AEMTuner 2.98',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('ALIENTECH KSuite HT',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Bosch ECU NUMBER',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Bosch ECU Database',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Checksum Corrector',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Checksum Corrector V2',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('ChekSum Bosch',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text(
                                        'Chiptuning Kennfelder Audi Fiat Nissan Bmw Opel Vw',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Conections',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Crank Wheel Pulser',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Dicatec',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('DTC Remover',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('DTCRemover MarckStore',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Eugene V2.32',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Flash',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Flash Kit 29',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('FORScan 2.3.10',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('FT Manager',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Autocom',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Ksuite 2.53',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('KTM BENCH',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('M1 TUNE 1.4.0.0286',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Mecanica 2000',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Mtune installer 1.142',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('New Trasdata',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Nexus v1.37.0',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('ECU safe',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('EGR Remover 1.4.44',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('EMU Black',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Orange Programmer',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('PCLink EN 6.22.25',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Pinout ECU',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('PSA ECU PIN',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('TunerProRT v500 9290',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SyvecsSetup Generic',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Techlibrary Termxv2build50',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('TunerStudioMS v3.1.08',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Upa Scripts',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('Upa Usb 1.3 software',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('WinOls 4.51 VM',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('AUTOCOM',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('DIMSPORT',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SIMPLO',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SMARTPHONE',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(240, 10, 22, 48),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(10, 10),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      color: Colors.orangeAccent,
                                    ),
                                    title: Text('SPC+MAX+FULL',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: 2,
                                        )),
                                    trailing: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, Routes.loginPage),
                                      child: Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          Text("Download",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 14,
                                                letterSpacing: 2,
                                              )),
                                          const Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
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
