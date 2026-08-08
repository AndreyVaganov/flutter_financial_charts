/// Внутреннее представление точки времени.
/// [weight] заполняется осью времени (fillWeightsForPoints) и отражает
/// календарную значимость метки; по умолчанию — минимальный вес.
class TimePoint {
  final int timestamp;
  final Object originalTime;

  /// Календарный вес метки. Мутируется при индексации оси времени.
  int weight;

  TimePoint({
    required this.timestamp,
    required this.originalTime,
    this.weight = 0,
  });
}
