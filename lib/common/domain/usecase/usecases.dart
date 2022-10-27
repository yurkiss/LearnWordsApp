
abstract class AsyncUsecase<T extends Object, P extends UsecaseParams> {
  const AsyncUsecase();

  Future<T> run({required P params});
}

abstract class UsecaseParams {
  const UsecaseParams();
}