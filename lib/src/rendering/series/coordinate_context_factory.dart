import '../../scales/time_scale/i_time_scale.dart';
import '../../series/i_series.dart';
import 'coordinate_context.dart';

/// Создаёт CoordinateContext для серии (или null, если данных/шкалы нет).
abstract interface class ICoordinateContextFactory {
  CoordinateContext? create(ISeries series);
}

class CoordinateContextFactory implements ICoordinateContextFactory {
  final ITimeScale timeScale;

  const CoordinateContextFactory(this.timeScale);

  @override
  CoordinateContext? create(ISeries series) {
    final priceScale = series.priceScale;
    if (priceScale == null) return null;

    // Опорное значение для percentage/indexedTo100 — первый бар серии.
    final firstValue = series.firstValue();
    if (firstValue == null) return null;

    return CoordinateContext(
      timeScale: timeScale,
      priceScale: priceScale,
      firstValue: firstValue,
    );
  }
}
