/// Единый контракт форматирования цен.
abstract interface class IPriceFormatter {
  /// Форматирует одиночную цену (метки crosshair, last value и т.п.).
  String format(double price);

  /// Форматирует набор ценовых делений с учётом шага между ними.
  /// Точность подписей выводится из [step], чтобы соседние деления
  /// не совпадали.
  List<String> formatTickmarks(List<double> prices, double step);
}
