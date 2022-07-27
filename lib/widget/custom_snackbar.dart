import 'package:flutter/material.dart';

class Utils {
  static customSnackBar(BuildContext context, text) {
    return SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );
  }
}
