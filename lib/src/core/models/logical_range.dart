/// Логический диапазон (индексы баров) видимой области.
class LogicalRange {
  final double from;
  final double to;

  const LogicalRange(this.from, this.to);

  double get length => to - from + 1;

  bool contains(double index) => from <= index && index <= to;
}
