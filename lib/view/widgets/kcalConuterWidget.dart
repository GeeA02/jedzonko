import 'package:flutter/material.dart';

class KcalCounterWidget extends StatefulWidget {
  final int _count;
  KcalCounterWidget(this._count);

  @override
  _KcalCounterWidgetState createState() => _KcalCounterWidgetState();
}

class _KcalCounterWidgetState extends State<KcalCounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('${widget._count}/2000 kcal',
        style: Theme.of(context).textTheme.bodyText1);
  }
}
