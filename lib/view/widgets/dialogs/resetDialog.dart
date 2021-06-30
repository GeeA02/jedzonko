import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/viewModel/restViewModel.dart';

class ResetDialog extends StatelessWidget {
  ResetDialog();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Reset', style: Theme.of(context).textTheme.headline4),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Czy na pewno chcesz usunąć wszystkie dane zapisane w aplikacji?',
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('ANULUJ'),
          style: TextButton.styleFrom(primary: Theme.of(context).primaryColor),
        ),
        TextButton(
          onPressed: () {
            ResetViewModel().resetAllBoxes();
            Navigator.pop(context);
          },
          child: Text('USUŃ'),
          style: TextButton.styleFrom(primary: Theme.of(context).errorColor),
        ),
      ],
    );
  }
}
