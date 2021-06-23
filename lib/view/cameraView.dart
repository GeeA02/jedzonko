import 'package:flutter/material.dart';
import 'package:jedzonko/api/api.dart';
import 'package:jedzonko/view/productView.dart';
import 'package:jedzonko/view/widgets/cameraWidget.dart';
import 'package:jedzonko/view/widgets/loadingDialog.dart';
import 'package:qr_mobile_vision/qr_camera.dart';

class CameraView extends StatelessWidget {
  CameraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CameraWidget(),
            ]),
      ),
    )));
  }
}
