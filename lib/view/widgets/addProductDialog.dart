import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/theme/config.dart';
import 'package:numberpicker/numberpicker.dart';

class AddProductDialog extends StatefulWidget {
  @override
  _AddProductDialogState createState() => _AddProductDialogState();
}

class _AddProductDialogState extends State<AddProductDialog> {
  int _productQuantity = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Dodaj produkt'),
      content: Form(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NumberPicker(
            value: _productQuantity,
            minValue: 0,
            step: 50,
            maxValue: 1000,
            onChanged: (value) => setState(() => _productQuantity = value),
          ),
          Text('Ilość produktu: $_productQuantity'),
        ],
      )),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('ZAMKNIJ'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);

            //TODO dodawanie do bazy kalkulatora
          },
          child: Text('DODAJ'),
          style: TextButton.styleFrom(primary: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
