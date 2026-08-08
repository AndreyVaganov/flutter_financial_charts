import '../../series/options/chart_options.dart';
import '../models/time_point.dart';

/// Стратегия поведения горизонтальной шкалы (время / числа / кривая доходности).
/// SOLID: OCP — позволяет расширять типы осей без изменения ядра.
abstract interface class IHorzScaleBehavior<T> {
  int keyOf(T item);
  TimePoint convertToInternal(T item);
  String formatHorzItem(T item);
  String formatTickmark(TimePoint point, ChartOptions options);
  void updateFormatter(Object localizationOptions);
  void fillWeightsForPoints(List<TimePoint> points, int startIndex);
}
