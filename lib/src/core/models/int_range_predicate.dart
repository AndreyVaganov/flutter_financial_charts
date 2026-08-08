import 'range.dart';

/// Проверка вхождения целочисленного индекса в диапазон [from; to].
class IntRangePredicate {
  const IntRangePredicate();

  bool contains(Range<int> range, int index) =>
      index >= range.from && index <= range.to;
}
