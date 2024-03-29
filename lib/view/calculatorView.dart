import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jedzonko/view/widgets/cards/productCard.dart';
import 'package:jedzonko/viewModel/calculatorViewModel.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({Key? key}) : super(key: key);

  // Initializing viewModel with repository singleton instance
  final CalculatorViewModel viewModel = CalculatorViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          "Kalkulator",
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                          child: StreamBuilder<BoxEvent>(
                        stream: viewModel.productsStream,
                        builder: (BuildContext context,
                            AsyncSnapshot<BoxEvent> snapshot) {
                          if (!snapshot.hasData) {
                            return ListView.builder(
                                itemCount: viewModel.productList.length,
                                itemBuilder: (context, index) {
                                  return ProductCard(
                                      viewModel.productList[index]);
                                });
                          } else {
                            return ListView.builder(
                                itemCount: viewModel.productList.length,
                                itemBuilder: (context, index) {
                                  return ProductCard(
                                      viewModel.productList[index]);
                                });
                          }
                        },
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Theme.of(context).primaryColor),
                              ),
                              onPressed: () {
                                viewModel.deleteAllProducts();
                              },
                              child: Text("WYCZYŚĆ"),
                            ),
                            StreamBuilder<BoxEvent>(
                                stream: viewModel.productsStream,
                                builder: (BuildContext context,
                                    AsyncSnapshot<BoxEvent> snapshot) {
                                  return Text(
                                      '${viewModel.kcalCount}/2000 kcal',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1);
                                }),
                          ],
                        ),
                      )
                    ])))));
  }
}
