import 'package:flutter/material.dart';

import '../../constants/app_dimensions.dart';

class InputBorderHub {
  static outlinedInputBorder({Color? borderColor}) => OutlineInputBorder(
        borderRadius: hugeBorderRadius,
        borderSide: BorderSide(
          color: borderColor ?? Colors.grey,
          width: 2,
          strokeAlign: 2,
        ),
      );
}
