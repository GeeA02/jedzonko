import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/productHistory.dart';
import 'package:jedzonko/viewModel/historyViewModel.dart';
import 'package:qr_mobile_vision/qr_camera.dart';

import '../productView.dart';
import 'dialogs/loadingDialog.dart';

class CameraWidget extends StatefulWidget {
  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  bool _camState = true;

  @override
  void dispose() {
    super.dispose();
    _camState = false;
    print('nałra');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.4,
      child: _camState
          ? QrCamera(
              notStartedBuilder: (context) => Center(
                  child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor),
              )),
              onError: (context, error) =>
                  Center(child: Text(error.toString())),
              qrCodeCallback: (String? barcode) {
                print(barcode);
                //turn off the camera
                setState(() {
                  _camState = false;
                });
                // show loading dialog, and return result from api or null if error occurs
                Future<ApiProduct?> result = showDialog<ApiProduct?>(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => LoadingDialog(barcode!),
                  useRootNavigator: false,
                );

                result.then((value) => checkResult(value));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.symmetric(
                      vertical: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                        width: 35.0,
                      ),
                      horizontal: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                        width: 60.0,
                      )),
                ),
              ),
            )
          : Center(),
    );
  }

  void checkResult(value) async {
    if (value.runtimeType == ApiProduct) {
      //TODO (test) save product in history table
      HistoryViewModel().addProduct(
          ProductHistory(value.productInfo, value.productInfo.barcode));
      // navigate to product page
      await Navigator.pushNamed(context, ProductView.routeName,
          arguments: value);
    }
    setState(() {
      _camState = true;
    });
  }
}
