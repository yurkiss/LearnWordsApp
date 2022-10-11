
class IndefiniteIterator<E> implements Iterator<E> {
  final Iterable<E> _iterable;
  final int _length;
  int _index;
  E? _current;

  IndefiniteIterator(Iterable<E> iterable)
      : _iterable = iterable,
        _length = iterable.length,
        _index = 0;

  @override
  E get current => _current as E;

  @override
  @pragma("vm:prefer-inline")
  bool moveNext() {
    int length = _iterable.length;
    if (_length != length) {
      throw ConcurrentModificationError(_iterable);
    }
    if (_index >= length) _index = 0;

    _current = _iterable.elementAt(_index);
    _index++;
    return true;
  }
}