import 'dart:ui';

/// Низкоуровневый рендерер, рисующий на Canvas.
abstract interface class IRenderer {
  void draw(Canvas canvas, Size size, double pixelRatio);
  //void drawBackground(Canvas canvas, Size size, double pixelRatio) {}
}
