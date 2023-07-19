import 'package:cheese_client/src/repositories/auth/auth_repository.dart';
import 'package:cheese_client/src/repositories/auth/auth_repository_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInViewModel extends ChangeNotifier {
  String _email = '';
  String _password = '';

  final AuthRepository _authRepository;

  SignInViewModel({required AuthRepository authRepository})
      : _authRepository = authRepository;

  String get password => _password;
  String get email => _email;

  void setName(String name) {
    _password = name;
  }

  void setEmail(String email) {
    _email = email;
  }

  Future<void> signIn() async {
    await _authRepository.signIn(_email, _password);
  }
}

final signInViewModelProvider = Provider((ref) => SignInViewModel(
      authRepository: ref.read(authRepositoryProvider),
    ));
