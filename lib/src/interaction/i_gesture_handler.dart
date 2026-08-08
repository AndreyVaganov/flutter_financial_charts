import '../core/models/point.dart';

/// Обработчик жестов (pan/scale/tap). Реализуется виджетом.
abstract interface class IGestureHandler {
  void onPanStart(ChartPoint position);
  void onPanUpdate(ChartPoint delta, ChartPoint position);
  void onPanEnd();

  void onScaleStart(ChartPoint focalPoint);
  void onScaleUpdate(double scale, ChartPoint focalPoint);
  void onScaleEnd();

  void onTap(ChartPoint position);
  void onDoubleTap(ChartPoint position);

  void onHover(ChartPoint position);
  void onExit();

  void onMouseWheel(double deltaX, double deltaY, ChartPoint position);
}
