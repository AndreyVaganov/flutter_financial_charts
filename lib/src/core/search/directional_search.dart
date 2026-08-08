import '../enums/mismatch_direction.dart';
import 'i_key_selector.dart';
import 'lower_bound.dart';

/// Поиск позиции по ключу с учётом направления при промахе.
/// Инкапсулирует общий паттерн exact/nearestLeft/nearestRight.
class DirectionalSearch<T> {
  final IKeySelector<T> selector;
  final LowerBound<T> _lowerBound;

  DirectionalSearch(this.selector) : _lowerBound = LowerBound(selector);

  /// Индекс элемента с ключом [value] или ближайшего согласно [direction].
  /// null — если совпадения нет и направление [MismatchDirection.none],
  /// либо подходящего соседа не существует.
  int? indexOf(List<T> sorted, int value, MismatchDirection direction) {
    final pos = _lowerBound.find(sorted, value);

    if (pos < sorted.length && selector.keyOf(sorted[pos]) == value) {
      return pos;
    }

    switch (direction) {
      case MismatchDirection.none:
        return null;
      case MismatchDirection.nearestRight:
        return pos < sorted.length ? pos : null;
      case MismatchDirection.nearestLeft:
        return pos > 0 ? pos - 1 : null;
    }
  }
}
