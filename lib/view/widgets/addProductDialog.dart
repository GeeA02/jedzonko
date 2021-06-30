import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/database/calculator_product_repository.dart';
import 'package:jedzonko/model/product_calculator.dart';
import 'package:numberpicker/numberpicker.dart';

// ignore: must_be_immutable
class AddProductDialog extends StatefulWidget {
  final ProductCalculator _product;
  AddProductDialog(this._product);
  @override
  _AddProductDialogState createState() => _AddProductDialogState();
}

class _AddProductDialogState extends State<AddProductDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TextEditingController(text: widget._product.quantity.toString());
  }

  var box = CalculatorProductRepository.instance.productListBox;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Wybierz ilość',
        style: Theme.of(context).textTheme.headline4,
        textAlign: TextAlign.center,
      ),
      content: Form(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NumberPicker(
            value: widget._product.quantity,
            minValue: 0,
            step: 50,
            maxValue: 1000,
            selectedTextStyle: Theme.of(context).textTheme.headline5,
            onChanged: (value) => setState(() {
              widget._product.quantity = value;
              _controller.text = value.toString();
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Ilość produktu: '),
                Flexible(
                  child: TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.toString().isEmpty ||
                            int.tryParse(value.toString()) == null ||
                            value.toString() == '0') {
                          return 'Nieprawidłowa wartość';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                      )),
                )
              ],
            ),
          ),
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
            int? countValue = int.tryParse(_controller.text);
            if (countValue != null) {
              box!.put(widget._product.id, widget._product);
              Navigator.pop(context);
            }
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
