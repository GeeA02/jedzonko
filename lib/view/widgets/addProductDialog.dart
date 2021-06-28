import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/database/calculator_product_repository.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/product_calculator.dart';
import 'package:numberpicker/numberpicker.dart';

class AddProductDialog extends StatefulWidget {
  int quantity;
  final ApiProduct apiProduct;
  AddProductDialog(this.apiProduct, {this.quantity = 0});
  @override
  _AddProductDialogState createState() => _AddProductDialogState();
}

class _AddProductDialogState extends State<AddProductDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.quantity.toString());
  }

  var box = CalculatorProductRepository.instance.productListBox;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edytuj ilość produktu'),
      content: Form(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NumberPicker(
            value: widget.quantity,
            minValue: 0,
            step: 50,
            maxValue: 1000,
            selectedTextStyle: Theme.of(context).textTheme.headline5,
            onChanged: (value) => setState(() {
              widget.quantity = value;
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
              ProductCalculator product =
                  ProductCalculator(widget.apiProduct, countValue);
              box!.put(product.hashCode, product);
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
