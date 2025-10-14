import 'package:flutter/material.dart';
import 'package:flutter_story_editor/src/controller/controller.dart';
import 'src/views/sticker_control_views/sticker_control_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StickerControlView(
          controller: FlutterStoryEditorController(),
          onStickerClickListener: (sticker) {
            print("Sticker clicked: $sticker");
          },
        ),
      ),
    );
  }
}