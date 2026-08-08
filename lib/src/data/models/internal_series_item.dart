/// Внутреннее нормализованное представление точки серии
class InternalSeriesItem {
  final int index;
  final int timestamp;
  final Object originalTime;

  /// [open, high, low, close] или single-value в [3].
  final List<double> values;

  double x = double.nan;
  double y = double.nan;

  InternalSeriesItem({
    required this.index,
    required this.timestamp,
    required this.originalTime,
    required this.values,
  });
}
