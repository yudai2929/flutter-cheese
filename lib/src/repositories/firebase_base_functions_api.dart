import 'package:cheese_client/src/utils/firebase/firebase_exception.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'dart:convert';

class FirebaseFunctionsApi {
  final FirebaseFunctions _firebaseFunctions;

  FirebaseFunctionsApi(this._firebaseFunctions);
  Future<dynamic> execute(String name, {dynamic param}) async {
    final HttpsCallable callable = _firebaseFunctions.httpsCallable(name);
    try {
      final res = await callable.call(param);
      final String jsonString = json.encode(res.data);
      return json.decode(jsonString);
    } on FirebaseFunctionsException catch (e) {
      throw firebaseFunctionsException(e);
    }
  }
}
