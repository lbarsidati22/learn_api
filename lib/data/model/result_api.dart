class ResultApi<T> {
  final bool isDone;
  final T dataOrError;
  ResultApi({
    required this.isDone,
    required this.dataOrError,
  });
}
