import '../../core/models/logical_range.dart';
import '../../core/models/range.dart';
import '../../core/models/time_point.dart';
import '../../series/options/time_scale_options.dart';

abstract class ITimeScale {
  TimeScaleOptions get options;
  double get width;
  double get barSpacing;
  double get rightOffset;
  int get baseIndex;
  bool get isEmpty;

  LogicalRange? get visibleLogicalRange;
  Range<int>? get visibleStrictRange;

  double indexToCoordinate(int index);
  int coordinateToIndex(double x, {bool clamp = false});

  /// Логический (дробный) индекс по X-координате.
  double coordinateToLogical(double x);

  int? timeToIndex(TimePoint time, bool findNearest);
  TimePoint? indexToTime(int index);

  void setBarSpacing(double value);
  void setRightOffset(double offset);

  /// Сдвигает видимую область на [barsDelta] баров (pan).
  void scrollByBars(double barsDelta);

  /// Масштабирует барспейсинг в [factor] раз, удерживая точку под [anchorX].
  void zoom(double factor, double anchorX);

  void fitContent();
  void scrollToRealTime();
  void setVisibleLogicalRange(LogicalRange range);

  void applyOptions(TimeScaleOptions options);
  void setSize(double width);
  void invalidate();
  void setPoints(List<TimePoint> points);
}
