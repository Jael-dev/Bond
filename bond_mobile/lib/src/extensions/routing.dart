import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

extension Router on BuildContext {
  StackRouter get router => AutoRouter.of(this);
}
