import 'package:flutter/material.dart';
import 'package:pub_dev/src/components/colors.dart';
import '../ui/blocks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Listener(
              onPointerDown: (event) {
                // Clear Header search TextField focus.
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/tech.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: const <Widget>[
                    MenuBar(),
                    /*const Header(),*/
                    FlutterFavorites(),

                    // Background squares image container.

                    Footer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
    );
  }
}
