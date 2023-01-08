import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/utils/routes.dart';
import 'package:pub_dev/src/utils/utils.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../components/typography.dart';
import '../utils/demo_cursos.dart';
import '../utils/packages_cursos.dart';
import '../utils/packages_data.dart';

class MenuBar extends StatelessWidget {
  final EdgeInsetsGeometry linkTextPadding =
      const EdgeInsets.symmetric(horizontal: 8);
  final Widget divider = const SizedBox(
    height: 18,
    child: VerticalDivider(
      color: textWhiteDarkBackgroundColor,
      thickness: 1,
    ),
  );
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: backgroundColor,
      padding: ResponsiveValue<EdgeInsets>(context,
          defaultValue: const EdgeInsets.symmetric(
            horizontal: 35,
          ),
          valueWhen: [
            const Condition.smallerThan(
                name: TABLET, value: EdgeInsets.symmetric(horizontal: 0))
          ]).value,
      child: Row(
        children: [
          ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.smallerThan(name: TABLET)],
            child: IconButton(
              onPressed: () {
                showMenu(
                  color: backgroundColor,
                  context: context,
                  position: const RelativeRect.fromLTRB(0, 50, 200, 0),
                  items: [
                    PopupMenuItem<String>(
                      value: '1',
                      child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.checagem),
                          child: const Text(
                            'PERFIL',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                            ),
                          )),
                    ),
                    PopupMenuItem<String>(
                      value: '1',
                      child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.software),
                          child: const Text(
                            'SOFTWARE',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                            ),
                          )),
                    ),
                    PopupMenuItem<String>(
                      value: '1',
                      child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.remap),
                          child: const Text(
                            'ARQUIVOS REMAP',
                            style: TextStyle(color: Colors.orangeAccent),
                          )),
                    ),
                    PopupMenuItem<String>(
                      value: '1',
                      child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.cursos),
                          child: const Text(
                            'CURSOS',
                            style: TextStyle(color: Colors.orangeAccent),
                          )),
                    ),
                    PopupMenuItem<String>(
                      value: '1',
                      child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.pinagem),
                          child: const Text(
                            'DIAGRAMAS E PINAGEM',
                            style: TextStyle(color: Colors.orangeAccent),
                          )),
                    ),
                    PopupMenuItem<String>(
                      value: '1',
                      child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.checagem),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.orangeAccent),
                          )),
                    ),
                  ],
                );
              },
              icon: const Icon(Icons.menu,
                  color: textWhiteDarkBackgroundColor, size: 24),
            ),
          ),
          InkWell(
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () => Navigator.popUntil(
                context, ModalRoute.withName(Navigator.defaultRouteName)),
            child: Text("KIENIM",
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w500)),
          ),
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.loginAdm),
              style: TextButton.styleFrom(
                  foregroundColor: materialSplashRippleLightColor,
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
              child: const Text(
                '',
                style: TextStyle(
                    fontSize: 14, color: textWhiteDarkBackgroundColor),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: Expanded(
              child: Container(),
            ),
          ),
          divider,
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.checagem),
              style: TextButton.styleFrom(
                  foregroundColor: materialSplashRippleLightColor,
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
              child: const Text(
                'PERFIL',
                style: TextStyle(
                    fontSize: 14, color: textWhiteDarkBackgroundColor),
              ),
            ),
          ),
          divider,
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.software),
              style: TextButton.styleFrom(
                  foregroundColor: materialSplashRippleLightColor,
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
              child: const Text(
                'SOFTWARE',
                style: TextStyle(
                    fontSize: 14, color: textWhiteDarkBackgroundColor),
              ),
            ),
          ),
          divider,
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.remap),
              style: TextButton.styleFrom(
                  foregroundColor: materialSplashRippleLightColor,
                  padding: const EdgeInsets.all(8)),
              child: const Text(
                'ARQUIVOS REMAP',
                style: TextStyle(
                    fontSize: 14, color: textWhiteDarkBackgroundColor),
              ),
            ),
          ),
          divider,
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.cursos),
              style: TextButton.styleFrom(
                  foregroundColor: materialSplashRippleLightColor,
                  padding: const EdgeInsets.all(8)),
              child: const Text(
                'CURSOS',
                style: TextStyle(
                    fontSize: 14, color: textWhiteDarkBackgroundColor),
              ),
            ),
          ),
          divider,
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.pinagem),
              style: TextButton.styleFrom(
                  foregroundColor: materialSplashRippleLightColor,
                  padding: const EdgeInsets.all(8)),
              child: const Text(
                'DIAGRAMAS E PINAGEM',
                style: TextStyle(
                    fontSize: 14, color: textWhiteDarkBackgroundColor),
              ),
            ),
          ),
          divider,
          ResponsiveVisibility(
            visible: true,
            hiddenWhen: const [Condition.smallerThan(name: 'MOBILE_LARGE')],
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.checagem),
              style: TextButton.styleFrom(
                  foregroundColor: materialSplashRippleLightColor,
                  padding: const EdgeInsets.all(8)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 14, color: Colors.orangeAccent),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/tech.jpg'), fit: BoxFit.cover),
        color: backgroundColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 110),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/pub_dev_logo.png', height: 70),
          const Padding(padding: EdgeInsets.only(bottom: 28)),
          Container(
            constraints: const BoxConstraints(maxWidth: 880),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: const Color(0xFF34404D),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
            child: TextField(
              onSubmitted: (value) => openUrl(buildSearchUrlFromQuery(value)),
              style: const TextStyle(color: Colors.white, fontSize: 24),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Color(0xFF888888)),
                  icon: Padding(
                    padding: EdgeInsets.only(left: 35),
                    child:
                        Icon(Icons.search, color: Color(0xFF888888), size: 24),
                  ),
                  hintText: 'Search packages',
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(0, 20, 35, 20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  children: [
                    const TextSpan(text: 'Find and use packages to build '),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl('https://dart.dev');
                          },
                        text: 'Dart',
                        style: const TextStyle(color: linkDarkBackgroundColor)),
                    const TextSpan(text: ' and '),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl(
                                'https://gallery.codelessly.com/flutterwebsites/flutterwebsite');
                          },
                        text: 'Flutter',
                        style: const TextStyle(color: linkDarkBackgroundColor)),
                    const TextSpan(text: ' apps.'),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

class FlutterFavorites extends StatelessWidget {
  const FlutterFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/tech.jpg'), fit: BoxFit.cover),
        color: backgroundColor,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1610),
          padding: const EdgeInsets.fromLTRB(0, 44, 0, 140),
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text('Kienim Tuning Files', style: titleTextStyle),
              const SizedBox(
                height: 40,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                      color: textPrimaryColor, fontSize: 18, height: 1.6),
                  children: [
                    const TextSpan(
                        text: 'A maior plataforma de Remap do mundo! ',
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text: 'Milhares de arquivos prontos',
                        style: const TextStyle(color: linkColor)),
                    const TextSpan(
                        text: ', cursos e agora com serviço de arquivos!',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              if (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
                ResponsiveGridView.builder(
                  gridDelegate: const ResponsiveGridDelegate(
                      crossAxisExtent: 340,
                      mainAxisSpacing: 17,
                      crossAxisSpacing: 17,
                      childAspectRatio: 1.2),
                  maxRowCount: 1,
                  itemCount: favoritePackages.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
                  alignment: Alignment.center,
                  itemBuilder: (context, index) {
                    return PackageCard(package: favoritePackages[index]);
                  },
                ),
              if (ResponsiveWrapper.of(context).isSmallerThan('MOBILE_LARGE'))
                ...favoritePackages.map((e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: PackageCard(package: e),
                    )),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text('',
                          style: TextStyle(
                              color: linkColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*class MostPopular extends StatelessWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveVisibility(
            hiddenWhen: const [Condition.smallerThan(name: DESKTOP)],
            child: Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 280),
                child: Image.asset('assets/images/image_packages_1.png',
                    fit: BoxFit.contain),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: ResponsiveValue<int?>(context,
                defaultValue: null,
                valueWhen: [
                  const Condition.smallerThan(name: DESKTOP, value: 1)
                ]).value,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(bottom: 24)),
                const Text('Most popular packages', style: titleTextStyle),
                const Text('The most downloaded packages over the past 60 days',
                    style: TextStyle(
                        color: textPrimaryColor, fontSize: 18, height: 1.6)),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                if (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 834),
                      child: ResponsiveGridView.builder(
                        gridDelegate: const ResponsiveGridDelegate(
                            crossAxisExtent: 260,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 1.37),
                        maxRowCount: 2,
                        itemCount: popularPackages.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.fromLTRB(4, 8, 0, 16),
                        alignment: Alignment.center,
                        itemBuilder: (context, index) {
                          return PackageCard(package: popularPackages[index]);
                        },
                      ),
                    ),
                  ),
                if (ResponsiveWrapper.of(context).isSmallerThan('MOBILE_LARGE'))
                  ...popularPackages.map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PackageCard(package: e),
                      )),
                // TODO: Alignment isn't working due to Flutter issue.
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () =>
                            openUrl('https://pub.dev/packages?sort=popularity'),
                        child: const Text('VIEW ALL',
                            style: TextStyle(
                                color: linkColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopFlutter extends StatelessWidget {
  const TopFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: ResponsiveValue<int?>(context,
                defaultValue: null,
                valueWhen: [
                  const Condition.smallerThan(name: DESKTOP, value: 1)
                ]).value,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(bottom: 24)),
                const Text('Top Flutter packages', style: titleTextStyle),
                const Text('Top packages that extend Flutter with new features',
                    style: TextStyle(
                        color: textPrimaryColor, fontSize: 18, height: 1.6)),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                if (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 834),
                      child: ResponsiveGridView.builder(
                        gridDelegate: const ResponsiveGridDelegate(
                            crossAxisExtent: 260,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 1.37),
                        maxRowCount: 2,
                        itemCount: topFlutterPackages.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.fromLTRB(4, 8, 0, 16),
                        alignment: Alignment.center,
                        itemBuilder: (context, index) {
                          return PackageCard(
                              package: topFlutterPackages[index]);
                        },
                      ),
                    ),
                  ),
                if (ResponsiveWrapper.of(context).isSmallerThan('MOBILE_LARGE'))
                  ...topFlutterPackages.map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PackageCard(package: e),
                      )),
                // TODO: Alignment isn't working due to Flutter issue.
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () =>
                            openUrl('https://pub.dev/flutter/packages'),
                        child: const Text('VIEW ALL',
                            style: TextStyle(
                                color: linkColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ResponsiveVisibility(
            hiddenWhen: const [Condition.smallerThan(name: DESKTOP)],
            child: Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 280),
                  child: Image.asset('assets/images/image_packages_2.png',
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopDart extends StatelessWidget {
  const TopDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveVisibility(
            hiddenWhen: const [Condition.smallerThan(name: DESKTOP)],
            child: Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 280),
                  child: Image.asset('assets/images/image_packages_3.png',
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: ResponsiveValue<int?>(context,
                defaultValue: null,
                valueWhen: [
                  const Condition.smallerThan(name: DESKTOP, value: 1)
                ]).value,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(bottom: 24)),
                const Text('Top Dart packages', style: titleTextStyle),
                const Text('Top packages for any Dart-based app or program',
                    style: TextStyle(
                        color: textPrimaryColor, fontSize: 18, height: 1.6)),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                if (ResponsiveWrapper.of(context).isLargerThan(MOBILE))
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 834),
                      child: ResponsiveGridView.builder(
                        gridDelegate: const ResponsiveGridDelegate(
                            crossAxisExtent: 260,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 1.37),
                        maxRowCount: 2,
                        itemCount: topDartPackages.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.fromLTRB(4, 8, 0, 16),
                        alignment: Alignment.center,
                        itemBuilder: (context, index) {
                          return PackageCard(package: topDartPackages[index]);
                        },
                      ),
                    ),
                  ),
                if (ResponsiveWrapper.of(context).isSmallerThan('MOBILE_LARGE'))
                  ...topDartPackages.map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PackageCard(package: e),
                      )),
                // TODO: Alignment isn't working due to Flutter issue.
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => openUrl('https://pub.dev/dart/packages'),
                        child: const Text('VIEW ALL',
                            style: TextStyle(
                                color: linkColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/

class PackageCard extends StatelessWidget {
  final PackageModel package;

  const PackageCard({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, package.page),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(77, 117, 117, 117),
                  offset: Offset(0, 2),
                  blurRadius: 5),
            ],
            color: backgroundColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(package.title,
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis),
              const SizedBox(
                height: 8,
              ),
              Text(package.description,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 14, height: 1.6),
                  maxLines: 3,
                  overflow: TextOverflow.clip),

              /*const Padding(padding: EdgeInsets.only(bottom: 16)),*/
              if (ResponsiveWrapper.of(context).isLargerThan('MOBILE_LARGE'))
                const Spacer(),
              if (package.image.isNotEmpty)
                Hero(
                  tag: "${package.uid}",
                  child: Image.asset(
                    package.image,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class PackageCard1 extends StatelessWidget {
  final PackageModel1 package;

  const PackageCard1({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, package.page),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(77, 117, 117, 117),
                  offset: Offset(0, 2),
                  blurRadius: 5),
            ],
            color: backgroundColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(package.image), fit: BoxFit.fill),
              color: backgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),

                /*const Padding(padding: EdgeInsets.only(bottom: 16)),*/
                if (ResponsiveWrapper.of(context).isLargerThan('MOBILE_LARGE'))
                  const Spacer(),
                if (package.image.isNotEmpty)
                  Container(
                    height: 130,
                    color: Colors.transparent,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PackageCard2 extends StatelessWidget {
  final PackageModel2 package;

  const PackageCard2({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, Routes.loginPage),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(20, 20), blurRadius: 5),
            ],
            color: backgroundColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(package.title,
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis),
              const SizedBox(
                height: 8,
              ),
              Text(package.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    height: 1.6,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.clip),

              /*const Padding(padding: EdgeInsets.only(bottom: 16)),*/
              if (ResponsiveWrapper.of(context).isLargerThan('MOBILE_LARGE'))
                const Spacer(),
              if (package.image.isNotEmpty)
                Hero(
                  tag: "${package.uid}",
                  child: Image.asset(
                    package.image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  final EdgeInsetsGeometry linkTextPadding =
      const EdgeInsets.symmetric(horizontal: 8);
  final Widget divider = const SizedBox(
    height: 18,
    child: VerticalDivider(
      color: textWhiteDarkBackgroundColor,
      thickness: 1,
    ),
  );

  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 4,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: linkTextPadding,
                child: const Text(
                  '© Todos os direitos reservados. Desenvolvido por ComCode ©2022',
                  style: footerLinkTextStyle,
                ),
              ),
            ),
          ),
          divider,
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => openUrl(
                  'https://www.linkedin.com/company/comcodefabricadeapp/'),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Image.asset(
                  'assets/images/iconc.png',
                  width: 35,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          divider,
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => openUrl('https://github.com'),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Image.asset(
                  'assets/images/iconk.png',
                  width: 35,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "RetroPortal Studio",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          const Text(
            "RetroPortal Studio",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
