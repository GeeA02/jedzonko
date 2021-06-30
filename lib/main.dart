import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jedzonko/database/calculator_product_repository.dart';
import 'package:jedzonko/database/history_product_repository.dart';
import 'package:jedzonko/model/productHistory.dart';
import 'package:jedzonko/model/productInfo.dart';
import 'app.dart';
import 'model/product_calculator.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductCalculatorAdapter());
  Hive.registerAdapter(ProductInfoAdapter());
  Hive.registerAdapter(ProductHistoryAdapter());
  Box<ProductCalculator> calculatorBox = await Hive.openBox<ProductCalculator>('calculatorBox');
  Box<ProductHistory> historyBox = await Hive.openBox<ProductHistory>('historyBox');
  CalculatorProductRepository.instance.setBox(calculatorBox);
  HistoryProductRepository.instance.setBox(historyBox);
  runApp(App());
}

