import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/cursos/aula1.dart';
import 'package:pub_dev/src/cursos/web_video_control.dart';
import 'package:pub_dev/src/utils/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:video_player/video_player.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

import 'package:flutter/material.dart';

import '../../main.dart';
import '../model/usermodel.dart';
import '../utils/data_manager.dart';

class WinOls extends StatefulWidget {
  const WinOls({Key? key}) : super(key: key);

  @override
  State<WinOls> createState() => _WinOlsState();
}

class _WinOlsState extends State<WinOls> {
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
  late FlickManager flickManager18;
  late DataManager? dataManager18;
  late FlickManager flickManager19;
  late DataManager? dataManager19;
  late FlickManager flickManager20;
  late DataManager? dataManager20;
  late FlickManager flickManager21;
  late DataManager? dataManager21;
  late FlickManager flickManager22;
  late DataManager? dataManager22;
  late FlickManager flickManager23;
  late DataManager? dataManager23;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.network(
            "https://www.mediafire.com/file/6zu736w7wo52wlm/AULA_19_-_INSTALA%25C3%2587%25C3%2583O_DO_SOFTWARE_DE_EDI%25C3%2587%25C3%2583O_WINOLS.mp4?raw=true"));
    List<String> urls = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager = DataManager(flickManager: flickManager, urls: urls);

    flickManager1 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/je5n401azqge1z6/Aula_20_-_Conhecendo_o_software_WinOLS.mp4?raw=true"),
    );
    List<String> url = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager1 = DataManager(flickManager: flickManager1, urls: url);

    flickManager2 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/imz7ddfqxedye1x/AULA_21_-_ABRINDO_UM_ARQUIVO_NO_WINOLS.mp4?raw=true"),
    );
    List<String> url1 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager2 = DataManager(flickManager: flickManager1, urls: url1);

    flickManager3 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/6oec9s83q82rrcz/Aula_22_-_Identifica%25C3%25A7%25C3%25A3o_dos_Mapas_no_WinOLS.mp4?raw=true"),
    );
    List<String> url3 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager3 = DataManager(flickManager: flickManager1, urls: url3);

    flickManager4 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/h9bmo5pfzgc5vn4/Aula_23_-_Ajustes_nos_Padr%25C3%25B5es_dos_Eixos_X_e_Y_do_mapa_do_WinOLS.mp4?raw=true"),
    );
    List<String> url4 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager4 = DataManager(flickManager: flickManager1, urls: url4);

    flickManager5 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/o27fj8dyaflt972/Aula_24_-_Edi%25C3%25A7%25C3%25A3o_do_Arquivo_Ciclo_Otto_Sistema_Bosch_ME7.mp4?raw=true"),
    );
    List<String> url5 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager5 = DataManager(flickManager: flickManager1, urls: url5);

    flickManager6 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/g5yf1u8xgdq69ui/Aula_25_-_Edi%25C3%25A7%25C3%25A3o_de_Arquivo_Ciclo_Otto_Sistema_Marelli_IAW_4XX_FIAT.mp4?raw=true"),
    );
    List<String> url6 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager6 = DataManager(flickManager: flickManager1, urls: url6);

    flickManager7 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/sm1l7e6s0j6vye5/AULA_26_-_EDI%25C3%2587%25C3%2583O_DE_ARQUIVO_DIESEL_SISTEMA_BOSCH_E.mp4?raw=true"),
    );
    List<String> url7 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager7 = DataManager(flickManager: flickManager1, urls: url7);

    flickManager8 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/djm4nmd2rpcu8ka/Aula_27_-_Edi%25C3%25A7%25C3%25A3o_de_Arquivo_Diesel_Pesado_Sistema_MB_Temic_EU3.mp4?raw=true"),
    );
    List<String> url8 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager8 = DataManager(flickManager: flickManager1, urls: url8);

    flickManager9 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/powys946pv00o5j/Aula_28_-_Desabilita%25C3%25A7%25C3%25A3o_DPF%252C_EGR_e_Bomba_D%2527%25C3%25A1gua_Via_Map_Pack_-_Amarok_2.0_TDI.mp4?raw=true"),
    );
    List<String> url9 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager9 = DataManager(flickManager: flickManager1, urls: url9);

    flickManager10 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/0jngm0kr9ad3vfe/Aula_29_-_Desabilita%25C3%25A7%25C3%25A3o_da_EGR%252C_DPF_e_Bomba_d%2527%25C3%25A1gua_Via_Map_Pack_-_Amarok_2.0.mp4?raw=true"),
    );
    List<String> url10 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager10 = DataManager(flickManager: flickManager1, urls: url10);

    flickManager11 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/24v5tpyv0f7lqcb/AULA_30_-_DISNABLE_DA_EGR%252C_DPF_E_BOMBA_AMAROK_160.mp4?raw=true"),
    );
    List<String> url11 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager11 = DataManager(flickManager: flickManager1, urls: url11);

    flickManager12 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/vrohtkys1ijekbh/AULA_31_-_DISNABLE_DA_EGR_E_DPF_FRONTIER_2_3_150HP.mp4?raw=true"),
    );
    List<String> url12 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager12 = DataManager(flickManager: flickManager1, urls: url12);

    flickManager13 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/psim2fm5mipg3vd/AULA_32_-_DISNABLE_DA_EGR_E_DPF_FRONTIER_2_5_190HP.mp4?raw=true"),
    );
    List<String> url13 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager13 = DataManager(flickManager: flickManager1, urls: url13);

    flickManager14 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/25s5f9ctppi28t9/AULA_33_-_DISNABLE_DA_EGR_E_DPF_RANGER_2_2_MANUAL.mp4?raw=true"),
    );
    List<String> url14 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager14 = DataManager(flickManager: flickManager1, urls: url14);

    flickManager15 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/kqa2b0zwr4kxdvu/AULA_34_-_DISNABLE_DA_EGR_E_DPF_RANGER_3_2_ATM_SID.mp4?raw=true"),
    );
    List<String> url15 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager15 = DataManager(flickManager: flickManager1, urls: url15);

    flickManager16 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/7954ogz7laxucin/AULA_35_-_DISNABLE_DA_EGR_E_DPF_DUCATO_2.3_MULTIJE.mp4?raw=true"),
    );
    List<String> url16 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager16 = DataManager(flickManager: flickManager1, urls: url16);

    flickManager17 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/jc5gx3pj2qua8cr/AULA_36_-_DISNABLE_EGR_E_DPF_PEUGEOT_BOXER_MJ8F3.mp4?raw=true"),
    );
    List<String> url17 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager17 = DataManager(flickManager: flickManager1, urls: url17);

    flickManager18 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/9kjdw6kqbz17kgg/AULA_37_-_DISNABLE_DA_EGR_E_DPF_VIA_MAP_PACK_FORD.mp4?raw=true"),
    );
    List<String> url18 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager18 = DataManager(flickManager: flickManager1, urls: url18);

    flickManager19 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/u6h14n0wr3isnng/AULA_38_-_DISABLE_DA_EGR_E_DPF_IVECO_DAILY_35S14_E.mp4?raw=true"),
    );
    List<String> url19 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager19 = DataManager(flickManager: flickManager1, urls: url19);

    flickManager20 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/ylqmwl6zwyi4v4b/AULA_39_COMPARA%25C3%2587%25C3%2583O_DE_ARQUIVOS_COM_WINOLS_ORIGINAL.mp4?raw=true"),
    );
    List<String> url20 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager20 = DataManager(flickManager: flickManager1, urls: url20);

    flickManager21 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/m2py9s7gto98ugx/AULA_40_DESENVOLVENDO_MAP_PACK_PARA_UM_ARQUIVO.mp4?raw=true"),
    );
    List<String> url21 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager21 = DataManager(flickManager: flickManager1, urls: url21);

    flickManager22 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/m7fi33figrnt5mf/AULA_41_DESATIVA%25C3%2587%25C3%2583O_DE_DTC_CONCEITO_DE_COMO_EXECUT.mp4?raw=true"),
    );
    List<String> url22 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager22 = DataManager(flickManager: flickManager1, urls: url22);

    flickManager23 = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://www.mediafire.com/file/2boft4zr3qyxb8l/FINALIZA%25C3%2587%25C3%2583O_E_AGRADECIMENTOS.mp4?raw=true"),
    );
    List<String> url23 = (aula1["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager23 = DataManager(flickManager: flickManager1, urls: url23);

    pegarUsuario();
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
                    child: Text("CURSO WINOLS",
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
                  title: 'Aula 19- Instalação WinOls',
                  onTap: () {
                    page.jumpToPage(0);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 1,
                  title: 'Aula 20-Conhecendo o software',
                  onTap: () {
                    page.jumpToPage(1);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 2,
                  title: 'Aula 21- Abrindo arquivo',
                  onTap: () {
                    page.jumpToPage(2);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 3,
                  title: 'Aula 22- Identificação mapas',
                  onTap: () {
                    page.jumpToPage(3);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'Aula 23- Ajustes dos eixos',
                  onTap: () {
                    page.jumpToPage(4);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 5,
                  title: 'Aula 24- Edição',
                  onTap: () {
                    page.jumpToPage(5);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 6,
                  title: 'Aula 25- Edição',
                  onTap: () {
                    page.jumpToPage(6);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 7,
                  title: 'Aula 26- Edição',
                  onTap: () {
                    page.jumpToPage(7);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 8,
                  title: 'Aula 27- Edição',
                  onTap: () {
                    page.jumpToPage(8);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 9,
                  title: 'Aula 28- Desabilitações',
                  onTap: () {
                    page.jumpToPage(9);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 10,
                  title: 'Aula 29- Desabilitações',
                  onTap: () {
                    page.jumpToPage(10);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 11,
                  title: 'Aula 30- Desabilitações',
                  onTap: () {
                    page.jumpToPage(11);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 12,
                  title: 'Aula 31- Desabilitações',
                  onTap: () {
                    page.jumpToPage(12);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 13,
                  title: 'Aula 32- Desabilitações',
                  onTap: () {
                    page.jumpToPage(13);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 14,
                  title: 'Aula 33- Desabilitações',
                  onTap: () {
                    page.jumpToPage(14);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 15,
                  title: 'Aula 34- Desabilitações',
                  onTap: () {
                    page.jumpToPage(15);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 16,
                  title: 'Aula 35- Desabilitações',
                  onTap: () {
                    page.jumpToPage(16);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 17,
                  title: 'Aula 36- Desabilitações',
                  onTap: () {
                    page.jumpToPage(17);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 18,
                  title: 'Aula 37- Desabilitações',
                  onTap: () {
                    page.jumpToPage(18);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 19,
                  title: 'Aula 38- Desabilitações',
                  onTap: () {
                    page.jumpToPage(19);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 20,
                  title: 'Aula 39- Comparação',
                  onTap: () {
                    page.jumpToPage(20);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 21,
                  title: 'Aula 40- Map Pack',
                  onTap: () {
                    page.jumpToPage(21);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 22,
                  title: 'Aula 41- DTC',
                  onTap: () {
                    page.jumpToPage(22);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 23,
                  title: 'Agradecimentos',
                  onTap: () {
                    page.jumpToPage(23);
                  },
                  icon: const Icon(Icons.video_library_outlined),
                ),
                SideMenuItem(
                  priority: 24,
                  title: '',
                  onTap: () {},
                ),
                SideMenuItem(
                  priority: 25,
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
                      flickManager: flickManager18,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager18!,
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
                      flickManager: flickManager19,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager19!,
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
                      flickManager: flickManager20,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager20!,
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
                      flickManager: flickManager21,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager21!,
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
                      flickManager: flickManager22,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager22!,
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
                      flickManager: flickManager23,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: WebVideoControl(
                          dataManager: dataManager23!,
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
