import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:mat/level.dart';

class Mat extends FlameGame {
  late final CameraComponent cam;
  final world = Level();


  @override
  FutureOr<void> onLoad() async{
    cam = CameraComponent.withFixedResolution(width: 640, height: 360, world: world);
    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam, world]);
    return super.onLoad();
  }
}