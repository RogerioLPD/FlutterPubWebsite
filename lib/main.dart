import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/cursos/video.dart';
import 'package:pub_dev/src/cursos/video_aulas.dart';
import 'package:pub_dev/src/cursos/winols.dart';
import 'package:pub_dev/src/login/adm/login_adm.dart';
import 'package:pub_dev/src/login/cadastro/cadastro.dart';
import 'package:pub_dev/src/login/login/login_page.dart';
import 'package:pub_dev/src/pages/backupprofile.dart';
import 'package:pub_dev/src/pages/checagem.dart';
import 'package:pub_dev/src/pages/cursos.dart';
import 'package:pub_dev/src/pages/home.dart';
import 'package:pub_dev/src/pages/pinagem.dart';
import 'package:pub_dev/src/pages/profile.dart';
import 'package:pub_dev/src/pages/remap.dart';
import 'package:pub_dev/src/pages/software.dart';
import 'package:pub_dev/src/pages/software1.dart';
import 'package:pub_dev/src/utils/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:intl/intl_browser.dart';
import 'firebase_options.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.grey,
        primaryColor: Colors.white,
      ),
      title: 'Kienim',
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          minWidth: 360,
          defaultName: MOBILE,
          breakpoints: [
            const ResponsiveBreakpoint.resize(360),
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.resize(940, name: 'MOBILE_LARGE'),
            const ResponsiveBreakpoint.resize(850, name: TABLET),
            const ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/tech.jpg'),
                  fit: BoxFit.cover),
              color: backgroundColor,
            ),
          )),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return const HomePage();

            case Routes.profile:
              return const HomeScreen();
            case Routes.checagem:
              return const ChecagemPage();

            case Routes.video:
              return const Video();
            case Routes.loginPage:
              return const LoginPage1();
            case Routes.videoAulas:
              return const VideoAulas();

            case Routes.winOls:
              return const WinOls();
            case Routes.cadastro:
              return const CadastroPage();
            case Routes.loginAdm:
              return const LoginAdm();
            case Routes.cursos:
              return const CursosPage();
            case Routes.software:
              return const SoftwarePage();
            case Routes.remap:
              return const RemapPage();
            case Routes.pinagem:
              return const PinagemPage();
            case Routes.software1:
              return const Software1Page();
            case Routes.home1:
              return const HomeScreen1();

            default:
              return const SizedBox.shrink();
          }
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
