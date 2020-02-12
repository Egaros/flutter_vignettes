import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/env.dart';

import 'demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  static String _pkg = "constellations_list";
  static String get pkg => Env.getPackage(_pkg);
  static String get bundle => Env.getBundle(_pkg);

  @override
  Widget build(BuildContext context) {
    //Set to fullscreen for increased immersion, but disable if we're wrapped in the 'gallery' app
    if(!Env.isGalleryActive){
      //SystemChrome.setEnabledSystemUIOverlays(const []);
    }

    return MaterialApp(
      home: ConstellationsListDemo(),
    );
  }
}
