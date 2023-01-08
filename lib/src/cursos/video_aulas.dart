import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/cursos/aula1.dart';
import 'package:pub_dev/src/cursos/web_video_control.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:video_player/video_player.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../model/usermodel.dart';
import '../utils/data_manager.dart';
import '../utils/routes.dart';

class VideoAulas extends StatefulWidget {
  const VideoAulas({Key? key}) : super(key: key);

  @override
  State<VideoAulas> createState() => _VideoAulasState();
}

class _VideoAulasState extends State<VideoAulas> {
  PageController page = PageController();
  final _firebaseAuth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  UserModel1 loggedInUser = UserModel1();
  String nome = '';
  String email = '';
  late FlickManager flickManager;
  late DataManager? dataManager;
  late FlickManager flickManager1;
  late DataManager? dataManager1;
  late FlickManager flickManager2;
  late DataManager? dataManager2;
  late FlickManager flickManager3;
  late DataManager? dataManager3;
  late FlickManager flickManager4;
  late DataManager? dataManager4;
  late FlickManager flickManager5;
  late DataManager? dataManager5;
  late FlickManager flickManager6;
  late DataManager? dataManager6;
  late FlickManager flickManager7;
  late DataManager? dataManager7;
  late FlickManager flickManager8;
  late DataManager? dataManager8;
  late FlickManager flickManager9;
  late DataManager? dataManager9;
  late FlickManager flickManager10;
  late DataManager? dataManager10;
  late FlickManager flickManager11;
  late DataManager? dataManager11;
  late FlickManager flickManager12;
  late DataManager? dataManager12;
  late FlickManager flickManager13;
  late DataManager? dataManager13;
  late FlickManager flickManager14;
  late DataManager? dataManager14;
  late FlickManager flickManager15;
  late DataManager? dataManager15;
  late FlickManager flickManager16;
  late DataManager? dataManager16;
  late FlickManager flickManager17;
  late DataManager? dataManager17;

  @override
  void initState() {
    super.initState();
    pegarUsuario();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.network(
            "https://www.mediafire.com/file/s2hkhads9wntb4y/AULA_01_BOA_VINDAS.mp4?raw=true"));
    List<String> urls = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager = DataManager(flickManager: flickManager, urls: urls);

    flickManager1 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/93aqu1jrepqkhrz/AULA_02_CONCEITO_DE_REPONTENCIAMENTO_NOS_MOTORES.mp4?raw=true"),
    );
    List<String> url = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager1 = DataManager(flickManager: flickManager1, urls: url);

    flickManager2 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/kmcjm2o0wzhz8p7/AULA_03_-_CONHECENDO_OS_APARELHOS_DE_LEITURA_E_GRAVA%25C3%2587%25C3%2583O.mp4?raw=true"),
    );
    List<String> url1 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager2 = DataManager(flickManager: flickManager1, urls: url1);

    flickManager3 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/8waxpgsvt0c4y62/AULA_04_-_LEITURA_E_GRAVA%25C3%2587%25C3%2583O_DE_MODULO_LINHA_LEVE_COM_KESS.mp4?raw=true"),
    );
    List<String> url3 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager3 = DataManager(flickManager: flickManager1, urls: url3);

    flickManager4 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/ga7vrs5l78xboq6/AULA_05_-_LEITURA_E_GRAVA%25C3%2587%25C3%2583O_LINHA_LEVE_K_TAG.mp4?raw=true"),
    );
    List<String> url4 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager4 = DataManager(flickManager: flickManager1, urls: url4);

    flickManager5 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/q6btw7l8iad1ja1/AULA_06_-_LEITURA_E_GRAVA%25C3%2587%25C3%2583O_COM_KESS_-_LINHA_DIESEL.mp4?raw=true"),
    );
    List<String> url5 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager5 = DataManager(flickManager: flickManager1, urls: url5);

    flickManager6 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/8gq11g7r2ycmu1o/AULA_07_-_INSTALANDO_O_TITANIUM_E_APRENDENDO_O_CONCEITO_DE_TRABALHO.mp4?raw=true"),
    );
    List<String> url6 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager6 = DataManager(flickManager: flickManager1, urls: url6);

    flickManager7 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/5ojtxcl1c1g6sjo/AULA_08_-_CONHECENDO_AS_FUNCIONALIDADES_DO_ECM_TITANIUM.mp4?raw=true"),
    );
    List<String> url7 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager7 = DataManager(flickManager: flickManager1, urls: url7);

    flickManager8 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/2lbafgwgsc25v6n/AULA_09_-_EDITANDO_ARQUIVO_DO_SISTEMA_ME7.5.30.mp4?raw=true"),
    );
    List<String> url8 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager8 = DataManager(flickManager: flickManager1, urls: url8);

    flickManager9 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/tvksb82r13mxqc2/AULA_10_-_EDITANDO_ARQUIVO_DO_SISTEMA_MARELLI_%25284AFB.PF%252C_4GF.ST%2529.mp4?raw=true"),
    );
    List<String> url9 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager9 = DataManager(flickManager: flickManager1, urls: url9);

    flickManager10 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/hf8d8jciadocxw7/AULA_11_EDITANDO_ARQUIVO_DO_SISTEMA_BOSCH_TURBO_ME7_5.mp4?raw=true"),
    );
    List<String> url10 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager10 = DataManager(flickManager: flickManager1, urls: url10);

    flickManager11 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/i01shsb9tgyh2jx/AULA_12_EDI%25C3%2587%25C3%2583O_DE_ARQUIVO_DIESEL_-_CATEGORIA_CAMINHONETES_%2528SISTEMA_BOSCH%2529.mp4?raw=true"),
    );
    List<String> url11 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager11 = DataManager(flickManager: flickManager1, urls: url11);

    flickManager12 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/ygo9c6lqadcy4mk/AULA_13_EDI%25C3%2587%25C3%2583O_DE_ARQUIVOS_SISTEMA_DIESEL_-_CATEGORIA_SUV_DENSO_E_BOSCH.mp4?raw=true"),
    );
    List<String> url12 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager12 = DataManager(flickManager: flickManager1, urls: url12);

    flickManager13 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/e5hbz8fx6d9t77o/AULA_14_-_EDI%25C3%2587%25C3%2583O_DE_ARQUIVOS_SISTEMA_DIESEL_-_CATEGORIA_UTILIT%25C3%2581RIOS_%2528BOSCH%2529.mp4?raw=true"),
    );
    List<String> url13 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager13 = DataManager(flickManager: flickManager1, urls: url13);

    flickManager14 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/s76i75wf2u0vcak/AULA_15_-_EDI%25C3%2587%25C3%2583O_DE_ARQUIVO_DIESEL_PESADO_SISTEMA_TEMIC_PLD_E_BOSCH_EDC7UC31.mp4?raw=true"),
    );
    List<String> url14 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager14 = DataManager(flickManager: flickManager1, urls: url14);

    flickManager15 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/ep9dhadfpkdiux0/AULA_16_-_EDI%25C3%2587%25C3%2583O_DE_ARQUIVO_DIESEL_PESADO_SISTEMA_MS6.2%252C_EMS_S6%252C_EDC7_CUMMINS_E_EDC7_MWM.mp4?raw=true"),
    );
    List<String> url15 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager15 = DataManager(flickManager: flickManager1, urls: url15);

    flickManager16 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/gspjbr5fz52o7s6/AULA_17_-_FUN%25C3%2587%25C3%2583O_EXTRA_DO_ECM_TITANIUM__COMPARA%25C3%2587%25C3%2583O_DE_ARQUIVO_ORIGINAL_X_MODIFICADO.mp4?raw=true"),
    );
    List<String> url16 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager16 = DataManager(flickManager: flickManager1, urls: url16);

    flickManager17 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/btfc7l2w7alzbqb/AULA_18_-_LOCALIZA%25C3%2587%25C3%2583O_E_EDI%25C3%2587%25C3%2583O_DE_CHASSI_DENTRO_DO.mp4?raw=true"),
    );
    List<String> url17 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();
    pegarUsuario();

    dataManager17 = DataManager(flickManager: flickManager1, urls: url17);
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, Routes.profile),
            );
          },
        ),
        backgroundColor: backgroundColor,
        title: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () => Navigator.popUntil(
                      context, ModalRoute.withName(Navigator.defaultRouteName)),
                  child: Text(nome,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 28,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w500)),
                ),
                ResponsiveVisibility(
                  visible: true,
                  hiddenWhen: const [Condition.smallerThan(name: TABLET)],
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: materialSplashRippleLightColor,
                        padding: const EdgeInsets.all(8)),
                    child: Text("CURSO ECM TITANIUM",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                ResponsiveVisibility(
                  visible: true,
                  hiddenWhen: const [Condition.smallerThan(name: TABLET)],
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: materialSplashRippleLightColor,
                        padding: const EdgeInsets.all(8)),
                    child: Text(
                      email,
                      style: const TextStyle(
                          fontSize: 16, color: textWhiteDarkBackgroundColor),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(0),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(
              controller: page,
              style: SideMenuStyle(
                // showTooltip: false,
                displayMode: SideMenuDisplayMode.auto,
                hoverColor: const Color.fromARGB(255, 250, 191, 104),
                selectedColor: Colors.orangeAccent,
                selectedTitleTextStyle: const TextStyle(color: Colors.black),
                selectedIconColor: Colors.black,
                unselectedIconColor: Colors.white,
                unselectedTitleTextStyle: const TextStyle(color: Colors.white),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.all(Radius.circular(10)),
                // ),
                // backgroundColor: Colors.blueGrey[700]
              ),
              title: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 150,
                      maxWidth: 150,
                    ),
                  ),
                  const Divider(
                    indent: 8.0,
                    endIndent: 8.0,
                  ),
                ],
              ),
              items: [
                SideMenuItem(
                  priority: 0,
                  title: 'Aula 1-Boas vindas ao curso',
                  onTap: () {
                    page.jumpToPage(0);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 1,
                  title: 'Aula 2-Conceito de Repo...',
                  onTap: () {
                    page.jumpToPage(1);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 2,
                  title: 'Aula 3-Equipamentos',
                  onTap: () {
                    page.jumpToPage(2);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 3,
                  title: 'Aula 4-Leitura e gravação',
                  onTap: () {
                    page.jumpToPage(3);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'Aula 5- KTAG linha leve',
                  onTap: () {
                    page.jumpToPage(4);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 5,
                  title: 'Aula 6-Kess linha DIESEL',
                  onTap: () {
                    page.jumpToPage(5);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 6,
                  title: 'Aula 7-Instalação do ECM ',
                  onTap: () {
                    page.jumpToPage(6);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 7,
                  title: 'Aula 8-Conhecendo o ECM',
                  onTap: () {
                    page.jumpToPage(7);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 8,
                  title: 'Aula 9-Edição',
                  onTap: () {
                    page.jumpToPage(8);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 9,
                  title: 'Aula 10-Edição',
                  onTap: () {
                    page.jumpToPage(9);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 10,
                  title: 'Aula 11-Edição',
                  onTap: () {
                    page.jumpToPage(10);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 11,
                  title: 'Aula 12-Edição',
                  onTap: () {
                    page.jumpToPage(11);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 12,
                  title: 'Aula 13-Edição',
                  onTap: () {
                    page.jumpToPage(12);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 13,
                  title: 'Aula 14-Edição',
                  onTap: () {
                    page.jumpToPage(13);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 14,
                  title: 'Aula 15-Edição',
                  onTap: () {
                    page.jumpToPage(14);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 15,
                  title: 'Aula 16-Edição',
                  onTap: () {
                    page.jumpToPage(15);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 16,
                  title: 'Aula 17-Comparação',
                  onTap: () {
                    page.jumpToPage(16);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 17,
                  title: 'Aula 18-Localização',
                  onTap: () {
                    page.jumpToPage(17);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 18,
                  title: 'Sair',
                  onTap: () => Navigator.popUntil(
                      context, ModalRoute.withName(Navigator.defaultRouteName)),
                  icon: const Icon(Icons.exit_to_app_outlined),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: page,
                children: [
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager1,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager1!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager2,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager2!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager3,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager3!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager4,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager4!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager5,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager5!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager6,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager6!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager7,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager7!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager8,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager8!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager9,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager9!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager10,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager10!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager11,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager11!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager12,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager12!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager13,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager13!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager14,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager14!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager15,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager15!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager16,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager16!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tech.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.transparent,
                    ),
                    child: FlickVideoPlayer(
                      flickManager: flickManager17,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager17!,
                          iconSize: 30,
                          fontSize: 14,
                          progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                              playedColor: Colors.red),
                        ),
                        videoFit: BoxFit.contain,
                        // aspectRatioWhenLoading: 4 / 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  pegarUsuario() async {
    User? usuario = _firebaseAuth.currentUser;
    if (usuario != null) {
      setState(() {
        nome = usuario.displayName!;
        email = usuario.email!;
      });
    }
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MyApp()));
  }
}

Future<void> search(BuildContext context) async {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => const MyApp()));
}
