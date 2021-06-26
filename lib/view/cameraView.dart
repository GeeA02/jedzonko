import 'package:flutter/material.dart';
import 'package:jedzonko/view/widgets/cameraWidget.dart';

class CameraView extends StatelessWidget {
  CameraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        child: CameraWidget(),
      ),
    )));
  }
}
