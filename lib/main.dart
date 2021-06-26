import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jedzonko/database/calculator_product_repository.dart';
import 'app.dart';
import 'database/history_product_repository.dart';
import 'model/apiProduct.dart';
import 'model/product_calculator.dart';

Future<void> main() async {
  await Hive.initFlutter();

  Box<ProductCalculator> calculatorBox = await Hive.openBox('calculatorProductList');
  Box<ApiProduct> historyBox= await Hive.openBox('historyProductList');

  CalculatorProductRepository.instance.setBox(calculatorBox);
  HistoryProductRepository.instance.setBox(historyBox);
  runApp(App());
}
