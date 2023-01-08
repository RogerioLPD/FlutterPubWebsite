import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../utils/routes.dart';

class PinagemPage extends StatefulWidget {
  const PinagemPage({super.key});

  @override
  State<PinagemPage> createState() => _PinagemPageState();
}

class _PinagemPageState extends State<PinagemPage> {
  bool isRepeatingAnimation = false;
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
                              'NÃO PERCA MAIS TEMPO E DINHEIRO COM ESQUEMAS ELÉTRICOS COMPLICADOS!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '\n\nO que faz quando Precisa testar um Módulo de Injeção?\nDispensa o serviço?\nAssim perde o serviço, e o cliente também!\nPaga alguém para testar?\nAí já perdeu uma parte da Mão de Obra!\nColoca Outra ECU?\nCorre um Sério Risco de Queimar a ECU Nova!\n\nCom o esquema de pinagens nas mãos fará toda a diferença:\nVocê mesmo poderá testar a ECU;\nTerá um diagnóstico mais rápido e preciso;\nNão pagará valores abusivos;\nFacilita na hora de ligar no simulador;\nAumenta o padrão do seu serviço;\nNão perde tempo procurando defeito onde não tem;',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
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
                              'O QUE SÃO OS DIAGRAMAS ELÉTRICOS E ELETRÔNICOS:',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'São representações gráficas das conexões\nentre os componentes elétricos\ne eletrônicos de um veículo.\nCom a evolução da tecnologia, cada vez\nmais os automóveis utilizam esses tipos\nde componentes para oferecer praticidade,\nconforto e segurança aos motoristas.\nComo você bem sabe, hoje, praticamente\ntodas as partes de um carro — desde a\nsuspensão, passando pelos freios,\na transmissão, até chegar ao motor — \ncontam com módulos, sensores, cabos,\nconectores e muitas outras peças que\najudam os conjuntos mecânicos a\nfuncionarem corretamente. É por isso que\nsaber fazer a leitura correta dos diagramas\né tão importante para um mecânico:\neles servem como uma espécie de mapa,\nguiando o profissional na direção do pleno\nentendimento de como funcionam os\nprincipais sistemas de um veículo moderno.\nAprender a ler essas indicações\ncorretamente facilita a localização dos\ndefeitos, reduzindo o tempo necessário\npara se realizar os reparos. O resultado é\numa maior produtividade, a satisfação dos\nclientes e, é claro, mais reconhecimento\npara seu trabalho.',
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
                                          AssetImage('assets/images/tech.jpg'),
                                      fit: BoxFit.cover),
                                  color: const Color.fromARGB(240, 10, 22, 48),
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(30, 30),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  title: Text(
                                      'Pinagem de ECUs Diagramas Linha Leve e Pesada',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 58,
                                          letterSpacing: 4,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Alfa',
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
                                    )),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Audi',
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
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Bentley',
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
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('BMW',
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
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Chevrolet',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Chrysler',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Citroen',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Dacia',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Daewoo',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('DAF',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Dodge',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Fendt',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Ferrari',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Fiat',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Ford',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Honda',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Hyundai',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('ISUZU',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Iveco',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Jaguar',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Jeep',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Kawasaki',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Kia',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Lancia',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Land Rover',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('MAN',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Mini',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Mitsubishi',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('New Holland',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Nissan',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Opel',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Peugeot',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Porsche',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Renault',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Rover',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('SAAB',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Scania',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Seat',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Smart',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Ssang Yong',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Suzuki',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Toyota',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Valtra',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Volvo',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('VW',
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
                                          AssetImage('assets/images/tech.jpg'),
                                      fit: BoxFit.cover),
                                  color: const Color.fromARGB(240, 10, 22, 48),
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(20, 20),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  title: Text(
                                      'Pinagem de ECUs Diagramas Linha Leve e Pesada',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 28,
                                          letterSpacing: 3,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Alfa',
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
                                    )),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Audi',
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
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Bentley',
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
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('BMW',
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
                                  margin: const EdgeInsets.only(bottom: 15),
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
                                    title: Text('Chevrolet',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Chrysler',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Citroen',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Dacia',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Daewoo',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('DAF',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Dodge',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Fendt',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Ferrari',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Fiat',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Ford',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Honda',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Hyundai',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('ISUZU',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Iveco',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Jaguar',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Jeep',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Kawasaki',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Kia',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Lancia',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Land Rover',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('MAN',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Mini',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Mitsubishi',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('New Holland',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Nissan',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Opel',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Peugeot',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Porsche',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Renault',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Rover',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('SAAB',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Scania',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Seat',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Smart',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Ssang Yong',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Suzuki',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Toyota',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Valtra',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('Volvo',
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
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(240, 10, 22, 48),
                                    boxShadow: [
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
                                    title: Text('VW',
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
