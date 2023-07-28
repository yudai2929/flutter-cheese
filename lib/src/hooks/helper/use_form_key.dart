import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

GlobalKey<FormState> useFormKey() {
  final formKey = useMemoized(GlobalKey<FormState>.new);
  return formKey;
}
