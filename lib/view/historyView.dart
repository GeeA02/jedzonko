import 'package:flutter/material.dart';
import 'package:jedzonko/view/widgets/cards/historyPorductCard.dart';
import 'package:jedzonko/viewModel/historyViewModel.dart';

class HistoryView extends StatelessWidget {
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
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: ListView.builder(
                        itemCount: viewModel.productList.length,
                        itemBuilder: (context, index) {
                          return HistoryProductCard(
                              viewModel.productList[index]);
                        }))
              ]),
        )));
  }
}
