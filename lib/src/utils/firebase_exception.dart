import 'package:cheese_client/src/exceptions/custom_exception.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';

Exception firebaseAuthException(FirebaseAuthException error) {
  switch (error.code) {
    case 'user-not-found':
      return CustomException.userNotFound();
    case 'wrong-password':
      return CustomException.wrongPassword();
    case 'user-disabled':
      return CustomException.userDisabled();
    case 'too-many-requests':
      return CustomException.tooManyRequests();
    case 'weak-password':
      return CustomException.weakPassword();
    case 'email-already-in-use':
      return CustomException.emailAlreadyInUse();
    case 'invalid-email':
      return CustomException.invalidEmail();
    case 'network-request-failed':
      return CustomException.networkRequestFailed();
    default:
      return CustomException.unknown();
  }
}

Exception firebaseFunctionsException(FirebaseFunctionsException error) {
  switch (error.code) {
    case 'invalid-argument':
      return CustomException.invalidArgument();
    case 'not-found':
      return CustomException.notFound();
    case 'already-exists':
      return CustomException.alreadyExists();
    case 'permission-denied':
      return CustomException.permissionDenied();
    case 'unauthenticated':
      return CustomException.unauthenticated();
    case 'resource-exhausted':
      return CustomException.tooManyRequests();
    case 'unavailable':
      return CustomException.noConnection();
    case 'deadline-exceeded':
      return CustomException.timeout();
    default:
      return CustomException.unknown();
  }
}
