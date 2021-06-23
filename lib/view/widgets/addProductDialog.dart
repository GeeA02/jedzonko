import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class AddProductDialog extends StatefulWidget {
  final int? _quantity;
  AddProductDialog(this._quantity);
  @override
  _AddProductDialogState createState() => _AddProductDialogState();
}

class _AddProductDialogState extends State<AddProductDialog> {
  int _productQuantity = 0;

  @override
  Widget build(BuildContext context) {
    if (widget._quantity != null) _productQuantity = widget._quantity!;
    return AlertDialog(
      title: Text(
          widget._quantity != null ? 'Edytuj ilość produktu' : 'Dodaj produkt'),
      content: Form(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NumberPicker(
            value: _productQuantity,
            minValue: 0,
            step: 50,
            maxValue: 1000,
            selectedTextStyle: Theme.of(context).textTheme.headline5,
            onChanged: (value) => setState(() => _productQuantity = value),
          ),
          Text('Ilość produktu: ${_productQuantity}g'),
        ],
      )),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'ZAMKNIJ',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);

            //TODO dodawanie do bazy kalkulatora
          },
          child: Text('DODAJ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .apply(color: Theme.of(context).primaryColor)),
          style: TextButton.styleFrom(primary: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
