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

class QueryOptions<T> {
  final bool enabled;
  final void Function(T data)? onSuccess;
  final void Function(Object? error)? onError;

  QueryOptions({
    required this.enabled,
    this.onSuccess,
    this.onError,
  });
}

UseQueryResult<T> useQuery<T>({
  required Future<T> Function() queryFn,
  // QueryOptions<T>? options,
}) {
  final reloadKey = useState(UniqueKey());

  Future<T> query() async {
    try {
      final res = await queryFn();
      return res;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  // NOTE: keyを更新すると再フェッチされる
  void refetch() {
    reloadKey.value = UniqueKey();
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
