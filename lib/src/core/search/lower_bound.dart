import 'i_key_selector.dart';

/// Обобщённый бинарный поиск нижней границы в списке,
/// отсортированном по ключу, извлекаемому [IKeySelector].
///
/// Единый источник истины для всех lower-bound поисков в проекте.
class LowerBound<T> {
  final IKeySelector<T> selector;

  const LowerBound(this.selector);

  /// Индекс первого элемента, у которого `key >= value`.
  /// Если такого нет — возвращает `sorted.length`.
  int find(List<T> sorted, int value) {
    var low = 0;
    var high = sorted.length;
    while (low < high) {
      final mid = (low + high) >> 1;
      if (selector.keyOf(sorted[mid]) < value) {
        low = mid + 1;
      } else {
        high = mid;
      }
    }
    return low;
  }
}
