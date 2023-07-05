import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'os_type.dart';

Widget getCirclType() {
  if (OsType.getOsType() == "windows") {
    return const CupertinoActivityIndicator();
  }
  return const CircularProgressIndicator();
}
