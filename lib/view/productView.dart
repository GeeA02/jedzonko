import 'package:flutter/material.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/product_calculator.dart';
import 'package:jedzonko/view/widgets/dialogs/addProductDialog.dart';
import 'package:jedzonko/view/widgets/productInfoWidget.dart';

class ProductView extends StatelessWidget {
  static const routeName = '/product';
  ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO Przejście z widoku kalkulatora do produktu się tutaj wysypuje
    final ApiProduct apiProduct =
        ModalRoute.of(context)!.settings.arguments as ApiProduct;

    return Scaffold(
        appBar: AppBar(
            iconTheme:
                IconThemeData(color: Theme.of(context).primaryColorLight),
            elevation: 0.0,
            title: Text(apiProduct.productInfo.name.toUpperCase())),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Container(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(16.0),
                  child: apiProduct.productInfo.imageUrl != null
                      ? Image.network(apiProduct.productInfo.imageUrl!)
                      : Image.asset('assets/images/notFound.jpg'),
                ),
                Expanded(
                    child: ProductInfoWidget(
                        apiProduct.nutriments, apiProduct.nutriscore)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                          onPressed: () {
                            showDialog<void>(
                                context: context,
                                builder: (context) {
                                  // TODO obecne api zmusza mnie do takich cudów:
                                  // To nie będzie działać jeżeli wszystkie membersy będą nulami nwm czy to sprawdzasz
                                  // Gabi na wcześniejszych etapach
                                  late ProductCalculator tmp;

                                  if (apiProduct.nutriments?.energykcal100g !=
                                      null) {
                                    int kcal = int.parse(
                                        apiProduct.nutriments!.energykcal100g!);
                                    tmp = ProductCalculator(
                                        apiProduct.productInfo,
                                        0,
                                        kcal,
                                        apiProduct.productInfo.barcode);
                                  } else if (apiProduct
                                          .nutriments?.energy100g !=
                                      null) {
                                    int kcal = int.parse(
                                        apiProduct.nutriments!.energy100g!);
                                    tmp = ProductCalculator(
                                        apiProduct.productInfo,
                                        0,
                                        kcal,
                                        apiProduct.productInfo.barcode);
                                  }
                                  print(tmp);
                                  return AddProductDialog(tmp);
                                });
                          },
                          child: Text("Dodaj do kalkulatora"),
                        ),
                      ),
                    )
                  ],
                )
              ])),
        ));
  }
}
