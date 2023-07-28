import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseQueryResult<T> {
  final bool isLoading;
  final Object? error;
  final void Function() refetch;
  final bool hasError;
  final T? data;

  UseQueryResult({
    required this.isLoading,
    required this.error,
    required this.refetch,
    required this.hasError,
    required this.data,
  });
}

UseQueryResult<T> useQuery<T>({
  required Future<T> Function() queryFn,
}) {
  final reloadKey = useState(UniqueKey());

  // NOTE: keyを更新すると再フェッチされる
  void refetch() {
    reloadKey.value = UniqueKey();
  }

  Future<T> query() async {
    try {
      final res = await queryFn();
      return res;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  final future = useMemoized(query, [reloadKey.value]);
  final snapshot = useFuture(future);
  return UseQueryResult(
    isLoading: snapshot.connectionState == ConnectionState.waiting,
    error: snapshot.error,
    refetch: refetch,
    hasError: snapshot.hasError,
    data: snapshot.data,
  );
}
