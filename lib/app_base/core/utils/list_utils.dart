import 'dart:math';

extension ListExtensions<T> on List<T> {
  T? firstWhereOrNull(bool Function(T element) param0) {
    for (final element in this) {
      if (param0(element)) {
        return element;
      }
    }

    return null;
  }

  /// Splits the list into chunks of size n.
  List<List<T>> chunk({required int n}) {
    final chunks = <List<T>>[];
    for (var i = 0; i < length; i += n) {
      final end = (i + n > length) ? length : i + n;
      chunks.add(sublist(i, end));
    }

    return chunks;
  }

  /// Moves the first element that matches the predicate to the front of the list.
  /// Returns true if an element was moved, false if no matching element was found.
  /// This operation modifies the list in-place.
  void moveToFront<T>(bool Function(T element) predicate) {
    final index = indexWhere((element) => predicate(element as T));
    if (index != -1) {
      final item = removeAt(index);
      insert(0, item);
    }
  }

  List<T> replaceWhere(bool Function(T e) test, T Function(T e) replacement) =>
      map((element) => test(element) ? replacement(element) : element).toList();

  List<T> replaceItemAtIndex(int index, T newItem) => List<T>.from(this)..[index] = newItem;

  /// Returns a random element from the list.
  T get randomElementFromList {
    final random = Random();
    final randomIndex = random.nextInt(length);
    return this[randomIndex];
  }

  String titlesAsString([String separator = ', ']) => map((e) => (e as dynamic).title as String).join(separator);
}

extension IterableExtension<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) param0) {
    for (final element in this) {
      if (param0(element)) {
        return element;
      }
    }

    return null;
  }
}
