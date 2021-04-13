import 'package:flutter/material.dart';
import 'package:jedzonko/view/widgets/historyPorductCard.dart';
import 'package:jedzonko/viewModel/historyViewModel.dart';

class HistoryView extends StatelessWidget {
  HistoryView({Key key}) : super(key: key);
  final HistoryViewModel viewModel = HistoryViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Theme.of(context).primaryColorLight),
          elevation: 0.0,
          title: Text("Historia"),
        ),
        body: Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      itemCount: viewModel.tmpProducts.length,
                      itemBuilder: (context, index) {
                        return HistoryProductCard(
                            viewModel.tmpProducts[index].name,
                            viewModel.tmpProducts[index].imageUrl,
                            viewModel.tmpProducts[index].date);
                      }))
            ])));
  }
}
