import 'package:pub_dev/src/components/colors.dart';
import 'package:pub_dev/src/cursos/mock_data.dart';
import 'package:pub_dev/src/cursos/web_video_control.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

import 'package:flutter/material.dart';

import '../ui/blocks.dart';
import '../utils/data_manager.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late FlickManager flickManager;
  late DataManager? dataManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.network(mockData["items"][1]["trailer_url"]),
    );
    List<String> urls = (mockData["items"] as List)
        .map<String>((item) => item["trailer_url"])
        .toList();

    dataManager = DataManager(flickManager: flickManager, urls: urls);
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ObjectKey(flickManager),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 0 && mounted) {
          flickManager.flickControlManager?.autoPause();
        } else if (visibility.visibleFraction == 1) {
          flickManager.flickControlManager?.autoResume();
        }
      },
      // ignore: avoid_unnecessary_containers

      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("nome",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    )),
                accountEmail: Text('email',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              ListTile(
                dense: true,
                title: const Text('Sair'),
                trailing: const Icon(Icons.exit_to_app),
                onTap: () {},
              ),
              ListTile(
                dense: true,
                title: const Text('Search'),
                trailing: const Icon(Icons.search),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: backgroundColor,
        ),
        body: Container(
          padding: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tech.jpg'),
              fit: BoxFit.fitWidth,
            ),
            color: Colors.transparent,
          ),
          child: Column(
            children: <Widget>[
              const MenuBar(),
              Container(
                margin: const EdgeInsets.fromLTRB(600, 200, 600, 200),
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
                      ),
                    ),
                    videoFit: BoxFit.contain,
                    // aspectRatioWhenLoading: 4 / 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
