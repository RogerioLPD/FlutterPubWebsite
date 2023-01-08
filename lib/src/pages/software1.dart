import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../utils/routes.dart';

class Software1Page extends StatefulWidget {
  const Software1Page({super.key});

  @override
  State<Software1Page> createState() => _Software1PageState();
}

class _Software1PageState extends State<Software1Page> {
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
                                    onPressed: () {
                                      openUrl(
                                          'https://www.mediafire.com/file/nr9z5omwntygnv1/ECM_TITANIUM_FULL.zip/file');
                                    },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/t2242peivp805ag/AEMTuner_2.98.exe_%25281%2529.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/m8zvjihu0tz1vzn/ALIENTECH_KSuite_HT_Setup_v2.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/i1x9cmjoio2invi/Bosch_ecu_NUMBER.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ykrn4f1d6epw2ih/BoschECUDatabase.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/8uzb5usekj5qeh3/checksum_corrector-20220530T123913Z-001.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/vbu3bb8up3kru3a/checksum_corrector.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/jugwvbs8draeq17/ChekSumBosch.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/x3j71eyjvs0wm8c/Chiptuning_Kennfelder_Audi_Fiat_Nissan_Bmw_Opel_Vw.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ifjxeogot4dwmbg/conections.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/6ncagtupr0pdxeb/CrankWheelPulser1.001.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ngqlq4uy91karex/Dicatec.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/k1cqe2o2x34zksq/DTCRemover.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/i8mjv33vvltn553/DTCRemover_MarckStore_%25281.8.8%2529.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/uqttptc33potq7a/EugeneSetup_v2.32.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/8ui401oeqp3qtaq/flash.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/77n4fzmcjitr369/FlashKit29_%25282%2529.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/zqtdbxpjs1jd9br/FORScanSetup2.3.10.beta.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/3pt861ze8kg42ux/ftmanager.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/v90ohyv210pqr78/keygen_autocom_2020.23_by_rolex_tech.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/xmkukob2vuz63os/Ksuite253.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/58mga5vgpp46glk/KTM_BENCH.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ivn33qxegq1b2jm/m1_tune_1.4.0.0286.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/pdoqxqsmwky3sw0/Mecanica_2000.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/s7cjujum4ddouun/MTune-installer-1.142.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/5yztrx714og65qn/new_trasdata_clone.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/x49cokl9opk75th/NexusInstallPackageWeb_v1.37.0.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/78cld2y710iqig2/ECUsafe.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/i88cihnosb29rci/EGR-Remover-1.4.44-Full_%25281%2529.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/7iriakvpsap0w4r/EMUBlackSetup_2_138_%25281%2529.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/tdra0lmp4m5dx05/orange_programmer.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/181cjv49fxwlout/PCLink_EN_6.22.25.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/paui8a5kpq2mjz4/Pinout_ECU.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/8nxpjwts40e05v9/PSA_ECU_PIN.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/rtk749g5asvfxlq/SetupTunerProRT_v500_9290.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/k77e34qs45lqujo/SyvecsSetup-Generic-2021-11-10.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/z4t2fucq62m8ko5/techlibrary_termxv2build50.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/gry32bazrehwmsv/TunerStudioMS_Setup_v3.1.08.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/04i4ep7ohp2aiie/upa_scripts.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/c5l9k44idrylmqc/upa_usb_1.3_softwer.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/vkex66nmfjcxvfi/WinOls_-4.51_NP_%25281%2529.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/zr5n95qssh704/AUTOCOM');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/gtnvxsu4sk9c7/DIMSPORT');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/8cw0r7ikbhg86/SIMPLO');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/g69aij38tdhi6/SMARTPHONE');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/tzrhmsxthmdo8/SPC+MAX+FULL');
                                      },
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
                                    onPressed: () {
                                      openUrl(
                                          'https://www.mediafire.com/file/nr9z5omwntygnv1/ECM_TITANIUM_FULL.zip/file');
                                    },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/t2242peivp805ag/AEMTuner_2.98.exe_%25281%2529.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/m8zvjihu0tz1vzn/ALIENTECH_KSuite_HT_Setup_v2.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/i1x9cmjoio2invi/Bosch_ecu_NUMBER.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ykrn4f1d6epw2ih/BoschECUDatabase.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/8uzb5usekj5qeh3/checksum_corrector-20220530T123913Z-001.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/vbu3bb8up3kru3a/checksum_corrector.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/jugwvbs8draeq17/ChekSumBosch.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/x3j71eyjvs0wm8c/Chiptuning_Kennfelder_Audi_Fiat_Nissan_Bmw_Opel_Vw.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ifjxeogot4dwmbg/conections.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/6ncagtupr0pdxeb/CrankWheelPulser1.001.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ngqlq4uy91karex/Dicatec.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/k1cqe2o2x34zksq/DTCRemover.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/i8mjv33vvltn553/DTCRemover_MarckStore_%25281.8.8%2529.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/uqttptc33potq7a/EugeneSetup_v2.32.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/8ui401oeqp3qtaq/flash.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/77n4fzmcjitr369/FlashKit29_%25282%2529.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/zqtdbxpjs1jd9br/FORScanSetup2.3.10.beta.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/3pt861ze8kg42ux/ftmanager.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/v90ohyv210pqr78/keygen_autocom_2020.23_by_rolex_tech.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/xmkukob2vuz63os/Ksuite253.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/58mga5vgpp46glk/KTM_BENCH.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/ivn33qxegq1b2jm/m1_tune_1.4.0.0286.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/pdoqxqsmwky3sw0/Mecanica_2000.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/s7cjujum4ddouun/MTune-installer-1.142.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/5yztrx714og65qn/new_trasdata_clone.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/x49cokl9opk75th/NexusInstallPackageWeb_v1.37.0.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/78cld2y710iqig2/ECUsafe.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/i88cihnosb29rci/EGR-Remover-1.4.44-Full_%25281%2529.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/7iriakvpsap0w4r/EMUBlackSetup_2_138_%25281%2529.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/tdra0lmp4m5dx05/orange_programmer.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/181cjv49fxwlout/PCLink_EN_6.22.25.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/paui8a5kpq2mjz4/Pinout_ECU.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/8nxpjwts40e05v9/PSA_ECU_PIN.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/rtk749g5asvfxlq/SetupTunerProRT_v500_9290.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/k77e34qs45lqujo/SyvecsSetup-Generic-2021-11-10.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/z4t2fucq62m8ko5/techlibrary_termxv2build50.zip/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/gry32bazrehwmsv/TunerStudioMS_Setup_v3.1.08.exe/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/04i4ep7ohp2aiie/upa_scripts.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/c5l9k44idrylmqc/upa_usb_1.3_softwer.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/file/vkex66nmfjcxvfi/WinOls_-4.51_NP_%25281%2529.rar/file');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/zr5n95qssh704/AUTOCOM');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/gtnvxsu4sk9c7/DIMSPORT');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/8cw0r7ikbhg86/SIMPLO');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/g69aij38tdhi6/SMARTPHONE');
                                      },
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
                                      onPressed: () {
                                        openUrl(
                                            'https://www.mediafire.com/folder/tzrhmsxthmdo8/SPC+MAX+FULL');
                                      },
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
