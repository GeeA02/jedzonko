import 'package:flutter/material.dart';
import 'package:jedzonko/view/widgets/productCard.dart';
import 'package:jedzonko/viewModel/calculatorViewModel.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({Key key}) : super(key: key);
  CalculatorViewModel viewModel = CalculatorViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Text(
                        "Kalkulator",
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.center,
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: viewModel.tmpProducts.length,
                              itemBuilder: (context, index) {
                                return ProductCard(
                                    viewModel.tmpProducts[index].name,
                                    viewModel.tmpProducts[index].imageUrl);
                              }))
                    ])))));
  }
}
