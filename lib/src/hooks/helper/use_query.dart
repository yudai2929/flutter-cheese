import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseQueryResult<T> {
  final T? data;
  final bool isLoading;
  final Exception? error;
  final Future<void> Function() refetch;

  UseQueryResult({
    required this.data,
    required this.isLoading,
    required this.error,
    required this.refetch,
  });
}

typedef QueryFunction<T> = Future<T> Function();

class QueryOption<T> {
  final VoidCallback? Function(T) onSuccess;
  final VoidCallback? Function(Exception) onError;

  QueryOption({
    required this.onSuccess,
    required this.onError,
  });
}

UseQueryResult<T> useQuery<T>({
  required QueryFunction<T> queryFn,
  QueryOption<T>? option,
}) {
  final data = useState<T?>(null);
  final isLoading = useState(false);
  final error = useState<Exception?>(null);

  Future<void> fetch() async {
    isLoading.value = true;
    try {
      final res = await queryFn();
      if (option?.onSuccess != null) option!.onSuccess(res);
      data.value = res;
    } on Exception catch (e) {
      error.value = e;
      if (option?.onError != null) option!.onError(e);
    } finally {
      isLoading.value = false;
    }
  }

  useEffect(() {
    fetch();
    return null;
  }, []);

  return UseQueryResult(
    data: data.value,
    isLoading: isLoading.value,
    error: error.value,
    refetch: fetch,
  );
}
