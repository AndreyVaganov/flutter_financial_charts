import '../../core/models/price_range.dart';
import '../../core/models/bar_price.dart';
import '../../core/enums/price_scale_mode.dart';
import '../../core/formatters/i_price_formatter.dart';
import '../../core/models/range.dart';
import '../../series/i_series.dart';
import '../../series/options/price_scale_options.dart';

abstract class IPriceScale {
  String get id;
  PriceScaleOptions get options;
  PriceScaleMode get mode;
  bool get isEmpty;
  bool get isAutoScale;
  IPriceFormatter get formatter;

  double get height;
  set height(double value);

  IPriceRange? get priceRange;

  /// Перевод цены в координату Y.
  double priceToCoordinate(double price, BarPrice firstValue);

  /// Перевод координаты Y в цену.
  double coordinateToPrice(double coordinate, BarPrice firstValue);

  void applyOptions(PriceScaleOptions options);
  void addSource(ISeries source);
  void removeSource(ISeries source);
  void recalculatePriceRange([Range<int>? visibleRange]);
  void invalidate();

  /// Ручной вертикальный скролл: сдвигает диапазон на [pixelDelta] пикселей.
  /// Переводит шкалу в ручной режим (autoScale off).
  void scrollByPixels(double pixelDelta);

  /// Возвращает шкалу в авто-режим и пересчитывает диапазон.
  void resetToAutoScale();
}
