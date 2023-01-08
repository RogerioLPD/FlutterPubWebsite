import 'package:animations/animations.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static const String home = "/";
  static const String login = "login";
  static const String profile = "profile";
  static const String checagem = "checagem";
  static const String register = "register";
  static const String video = "video";
  static const String loginPage = "loginPage";
  static const String videoAulas = "videoAulas";
  static const String ecmPage = "ecmPage";
  static const String sidePage = "sidePage";
  static const String winOls = "winOls";
  static const String cadastro = "cadastro";
  static const String loginAdm = "loginAdm";
  static const String cursos = "cursos";
  static const String software = "software";
  static const String remap = "remap";
  static const String pinagem = "pinagem";
  static const String software1 = "software1";
  static const String home1 = "home1";

  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }
}
