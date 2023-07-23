class AuthException implements Exception {
  final String message;

  AuthException({required this.message});

  @override
  String toString() => message;

  static passwordNotMatch() => AuthException(message: 'パスワードが一致しません');

  static emailAlreadyInUse() => AuthException(message: 'このメールアドレスは既に使用されています');

  static invalidEmail() => AuthException(message: 'メールアドレスの形式が正しくありません');

  static weakPassword() => AuthException(message: 'パスワードが短すぎます');

  static userNotFound() => AuthException(message: 'ユーザーが見つかりません');

  static wrongPassword() => AuthException(message: 'パスワードが間違っています');

  static tooManyRequests() => AuthException(message: 'リクエストが多すぎます');

  static userDisabled() => AuthException(message: 'ユーザーが無効です');

  static unknown() => AuthException(message: '不明なエラーが発生しました');
}
