library main;

import 'dart:html' as html;
import 'package:stagexl/stagexl.dart'; 

part 'lab_items.dart';

void main() {
  var stage = new Stage(html.querySelector('#stage'));
  var renderLoop = new RenderLoop();
  var juggler = renderLoop.juggler;
  renderLoop.addStage(stage);
  var background = new Lab_Background(40,40);
  var workbench = new Workbench(230, 300, juggler);
  var bunsenburner = new BunsenBurner(330, 350, juggler);
  stage.addChild(background);
  stage.addChild(workbench);
  stage.addChild(bunsenburner);
}