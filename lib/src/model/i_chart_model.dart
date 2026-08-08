import '../core/models/bar_price.dart';

import '../core/time/i_horz_scale_behavior.dart';
import '../scales/time_scale/i_time_scale.dart';
import '../series/i_series.dart';
import '../series/options/chart_options.dart';
import '../state/i_disposable.dart';
import 'pane/i_pane.dart';
import 'crosshair/crosshair.dart';

/// Центральная модель графика.
/// Оркестрирует панели, шкалы, серии, перекрестие.
abstract interface class IChartModel implements IDisposable {
  ChartOptions get options;
  ITimeScale get timeScale;
  IHorzScaleBehavior get horzScaleBehavior;
  Crosshair get crosshair;

  List<IPane> get panes;
  List<ISeries> get series;

  /// Высота области панелей (без оси времени). Нужна интеракции для
  /// вертикального попадания в панель.
  double get paneAreaHeight;

  IPane addPane({int? index});
  void removePane(int index);
  void movePane(int from, int to);

  void addSeriesToModel(ISeries series, {int paneIndex = 0});
  void removeSeriesFromModel(ISeries series);

  IPane? paneForSource(Object source);

  /// Позиция перекрестия по координатам курсора.
  void setCrosshairPosition(double x, double y, ISeries owner);
  void clearCrosshairPosition({bool skipEvent = false});

  BarPrice? firstValueOf(ISeries series);

  void applyOptions(ChartOptions options);
  void setSize(double width, [double? height]);

  void fullUpdate();
  void lightUpdate();
  int indexOfPane(IPane pane);
}
