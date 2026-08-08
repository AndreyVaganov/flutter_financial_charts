import '../../core/models/bar_price.dart';
import '../../scales/price_scale/i_price_scale.dart';
import '../../scales/time_scale/i_time_scale.dart';

/// Контекст пересчёта данных серии в координаты Canvas.
/// Объединяет обе шкалы и опорное значение (для percentage/indexed режимов).
class CoordinateContext {
  final ITimeScale timeScale;
  final IPriceScale priceScale;
  final BarPrice firstValue;

  const CoordinateContext({
    required this.timeScale,
    required this.priceScale,
    required this.firstValue,
  });

  double xAt(int index) => timeScale.indexToCoordinate(index);

  double yAt(double price) => priceScale.priceToCoordinate(price, firstValue);
  double get barSpacing => timeScale.barSpacing;
}
